// src/components/charts/FoodItemsBarChart.js

import React from 'react';
import { BarChart, Bar, XAxis, YAxis, Tooltip, CartesianGrid, Legend } from 'recharts';

const FoodItemsBarChart = ({ data, dataKeyName, showVolume, showRevenue }) => {
    // Transform data to format required by Recharts
    const chartData = data.map(entry => ({
        name: entry[dataKeyName],
        volume: entry.TotalVolume,
        revenue: entry.TotalRevenue
    }));

    return (
        <BarChart
            width={800}
            height={500}
            data={chartData}
            margin={{ top: 20, right: 30, left: 40, bottom: 70 }}
        >
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" angle={-45} textAnchor="end" interval={0} />
            <YAxis />
            <Tooltip />
            <Legend />
            {showVolume && <Bar dataKey="volume" fill="#8884d8" name="Total Volume" />}
            {showRevenue && <Bar dataKey="revenue" fill="#82ca9d" name="Total Revenue" />}
        </BarChart>
    );
};

export default FoodItemsBarChart;
