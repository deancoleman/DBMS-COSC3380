import React from 'react';
import { BarChart, Bar, XAxis, YAxis, Tooltip, CartesianGrid, Legend } from 'recharts';

const TimeFoodItemBarChart = ({ data, showVolume, showRevenue }) => {
    // Transform data to format required by Recharts
    const chartData = data.map(entry => ({
        month: `${entry.year}-${entry.month}`,
        volume: entry.total_volume,
        revenue: entry.total_revenue
    }));

    return (
        <BarChart
            width={600}
            height={400}
            data={chartData}
            margin={{ top: 20, right: 30, left: 20, bottom: 5 }}
        >
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="month" />
            <YAxis />
            <Tooltip />
            <Legend />
            {showVolume && <Bar dataKey="volume" fill="#8884d8" name="Total Volume" />}
            {showRevenue && <Bar dataKey="revenue" fill="#82ca9d" name="Total Revenue" />}
        </BarChart>
    );
};

export default TimeFoodItemBarChart;
