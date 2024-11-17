// TimeFoodItemBarChart.js

import React from 'react';
import { BarChart, Bar, XAxis, YAxis, Tooltip, CartesianGrid, Legend } from 'recharts';

const TimeFoodItemBarChart = ({ data, showVolume, showRevenue }) => {
    // Transform data to format required by Recharts
    const chartData = data.map(entry => ({
        month: `${entry.Year}-${entry.Month}`,
        volume: entry.TotalSold,
        revenue: entry.TotalRevenue
    }));
   
    return (
        <BarChart
            width={700}
            height={400}
            data={chartData}
            margin={{ top: 20, right: 120, left: -30, bottom: 50 }}
        >
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="month" padding={{ left: 20, right: 20 }} tick={{ angle: -45, textAnchor: 'end' }} interval={1} />

            <YAxis 
            />
            <Tooltip />
            <Legend />
            {showVolume && <Bar dataKey="volume" fill="#8884d8" name="Total Volume" barSize={15} />}
            {showRevenue && <Bar dataKey="revenue" fill="#82ca9d" name="Total Revenue" barSize={15} />}
        </BarChart>
    );
};

export default TimeFoodItemBarChart;
