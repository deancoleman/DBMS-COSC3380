import React, { useMemo } from 'react';
import { ResponsiveHeatMap } from '@nivo/heatmap';

const FlavorToppingHeatMap = ({ data }) => {
    const toppingKeys = useMemo(() => {
        return data[0] ? Object.keys(data[0]).filter(k => k !== 'FlavorName') : [];
    }, [data]);

    console.log("Topping Keys:", toppingKeys); // Verify topping keys are strings

    return (
        <div style={{ height: 600 }}>
            <ResponsiveHeatMap
                data={data}
                keys={toppingKeys}
                indexBy="FlavorName"
                margin={{ top: 100, right: 60, bottom: 100, left: 60 }}
                axisTop={{
                    orient: 'top',
                    tickSize: 5,
                    tickPadding: 5,
                    tickRotation: -45,
                    legend: '',
                    legendOffset: 36
                }}
                axisRight={null}
                axisBottom={null}
                axisLeft={{
                    orient: 'left',
                    tickSize: 5,
                    tickPadding: 5,
                    tickRotation: 0,
                    legend: '',
                    legendOffset: -40
                }}
                cellOpacity={1}
                cellBorderColor={{ from: 'color', modifiers: [['darker', 0.4]] }}
                labelTextColor={{ from: 'color', modifiers: [['darker', 1.8]] }}
                defs={[
                    {
                        id: 'lines',
                        type: 'patternLines',
                        background: 'inherit',
                        color: 'rgba(0, 0, 0, 0.1)',
                        rotation: -45,
                        lineWidth: 4,
                        spacing: 7
                    }
                ]}
                fill={[{ id: 'lines' }]}
                animate={true}
                motionConfig="wobbly"
                hoverTarget="cell"
                cellHoverOthersOpacity={0.25}
            />
        </div>
    );
};

export default FlavorToppingHeatMap;
