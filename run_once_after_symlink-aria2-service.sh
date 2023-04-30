#!/bin/bash

systemctl --user link ~/.local/aria2/aria2.service
systemctl --user enable --now aria2
