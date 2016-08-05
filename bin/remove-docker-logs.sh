echo "" > $(sudo docker inspect --format="{{.LogPath}}" seloto-website)
