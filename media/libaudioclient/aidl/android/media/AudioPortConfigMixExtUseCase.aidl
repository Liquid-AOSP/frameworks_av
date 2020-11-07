/*
 * Copyright (C) 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.media;

import android.media.AudioSourceType;
import android.media.AudioStreamType;

/**
 * {@hide}
 */
union AudioPortConfigMixExtUseCase {
    /**
     * This to be set if the containing config has the AudioPortRole::NONE role.
     * This represents an empty value (value is ignored).
     * TODO(ytai): replace with the canonical representation for an empty union, as soon as it is
     *             established.
     */
    boolean nothing;
    /** This to be set if the containing config has the AudioPortRole::SOURCE role. */
    AudioStreamType stream;
    /** This to be set if the containing config has the AudioPortRole::SINK role. */
    AudioSourceType source;
}