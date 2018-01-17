#!/bin/bash

export VULKAN_SDK=/Devel/SDK/VulkanSDK/1.0.65.0/x86_64/
export PATH="$VULKAN_SDK/bin:$PATH"
export LD_LIBRARY_PATH="$VULKAN_SDK/lib:${LD_LIBRARY_PATH:-}"
export VK_LAYER_PATH="$VULKAN_SDK/etc/explicit_layer.d"

./vkdemo
