/*
 * Copyright (C) 2024 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once

#include <mi_disp.h>

#include <memory>

bool readBool(int fd);
std::shared_ptr<disp_event_resp> parseDispEvent(int fd);
