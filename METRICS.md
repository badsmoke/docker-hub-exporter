# Metrics

Below are an example of the metrics as exposed by this exporter. 

```
# HELP docker_hub_image_last_updated last_updated
# TYPE docker_hub_image_last_updated gauge
docker_hub_image_last_updated{image="mjpg-streamer",user="badsmoke"} 1.583915174970809e+09
# HELP docker_hub_image_pulls_total pulls_total
# TYPE docker_hub_image_pulls_total counter
docker_hub_image_pulls_total{image="mjpg-streamer",user="badsmoke"} 869609
# HELP docker_hub_image_stars stars
# TYPE docker_hub_image_stars gauge
docker_hub_image_stars{image="mjpg-streamer",user="badsmoke"} 3.0
```