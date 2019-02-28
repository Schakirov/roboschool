#!/bin/bash
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so:/usr/lib/nvidia-384/libGL.so python3.5 -m baselines.run --alg=ppo2 --env=RoboschoolHumanoid-v1 --num_timesteps=2e4 --save_path=~/models/Antv2_2e4_ppo2 --interactivee=0
for (( i=1; i <= 10; i++ ))
do
echo "\n\n\n\nNOW NON INTERACTIVE\n\n\n\n"
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so:/usr/lib/nvidia-384/libGL.so python3.5 -m baselines.run --alg=ppo2 --env=RoboschoolHumanoid-v1 --num_timesteps=1e4 --save_path=~/models/Antv2_2e4_ppo2 --load_path=~/models/Antv2_2e4_ppo2 --interactivee=0
beep
echo "\n\n\n\nNOW INTERACTIVE\n\n\n\n"
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so:/usr/lib/nvidia-384/libGL.so python3.5 -m baselines.run --alg=ppo2 --env=RoboschoolHumanoid-v1 --num_timesteps=1e4 --save_path=~/models/Antv2_2e4_ppo2 --load_path=~/models/Antv2_2e4_ppo2 --interactivee=1
done