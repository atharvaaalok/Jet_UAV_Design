clear; clc; close all;
PS = PLOT_STANDARDS();

%==================================================
% LOAD THE DATA

ExperimentData = readtable('Exp3_July5_Temperature_FuelConsumptionRate_1.csv', 'NumHeaderLines', 0);
ExperimentData = ExperimentData{:, :};

time_stamps = ExperimentData(:, 1);
temperature = ExperimentData(:, 2);
weight_fuel_tank = ExperimentData(:, 3);

time_stamps = time_stamps / 60;
time_stamps = time_stamps / 1000;


% Remove values before 8  minutes
selection_idx = time_stamps > 0;
time_stamps = time_stamps(selection_idx);
temperature = temperature(selection_idx);
weight_fuel_tank = weight_fuel_tank(selection_idx);


%==================================================
% EXPERIMENT DETAILS

% time are in minutes
starting_throttle = 0.315;
start_time = 8 * 60;
throttle_50percent = 9 * 60;
throttle_75percent = 10 * 60;
throttle_100percent = 11 * 60;
end_time = 11 * 60 + 45;


%==================================================
% RATE OF FUEL CONSUMPTION

time_stamps_rate = time_stamps(2: end);
dweight_fuel_tank = diff(weight_fuel_tank);
dt = diff(time_stamps);

rate_weight_fuel_tank = dweight_fuel_tank ./ dt;


%==================================================
% PLOT THE DATA

% Plot temperature vs time
figure(1);
fig1_comps.fig = gcf;
hold on

fig1_comps.p1 = plot(time_stamps, temperature, 'LineWidth', 1, 'Color', PS.Green1);

title('Temperature vs Time');
xlabel('Time');
ylabel('Temperature');

STANDARDIZE_FIGURE(fig1_comps);
SAVE_MY_FIGURE(fig1_comps, 'Temperature_vs_Time_1.png', 'small');


% Plot weight_fuel_tank vs time
figure(2);
fig2_comps.fig = gcf;
hold on

fig2_comps.p1 = plot(time_stamps, weight_fuel_tank, 'LineWidth', 1, 'Color', PS.Blue1);

title('Fuel Weight vs Time');
xlabel('Time');
ylabel('Fuel Weight');

STANDARDIZE_FIGURE(fig2_comps);
SAVE_MY_FIGURE(fig2_comps, 'FuelWeight_vs_Time_1.png', 'small');


% Plot rate_of_change_of_weight vs time
figure(3);
fig3_comps.fig = gcf;
hold on

fig3_comps.p1 = plot(time_stamps_rate, rate_weight_fuel_tank, 'LineWidth', 1, 'Color', PS.Red1);

title('Rate of Change of Fuel Weight vs Time');
xlabel('Time');
ylabel('Rate of change of Fuel Weight');

STANDARDIZE_FIGURE(fig3_comps);
SAVE_MY_FIGURE(fig3_comps, 'RateFuelWeight_vs_Time_1.png', 'small');





