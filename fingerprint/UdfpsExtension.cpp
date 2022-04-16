/*
 * Copyright (C) 2022 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdint.h>
//#include <drm/sde_drm.h>
#include <compositionengine/UdfpsExtension.h>

uint32_t getUdfpsZOrder(uint32_t z, bool touched) {
    if (touched) {
        z |= 150994948;
    }

    return z;
}

uint64_t getUdfpsUsageBits(uint64_t usageBits, bool) {
    return usageBits;
}