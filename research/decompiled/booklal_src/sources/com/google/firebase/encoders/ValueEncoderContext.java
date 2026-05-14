package com.google.firebase.encoders;
/* loaded from: classes2.dex */
public interface ValueEncoderContext {
    ValueEncoderContext add(double d2);

    ValueEncoderContext add(float f5);

    ValueEncoderContext add(int i);

    ValueEncoderContext add(long j5);

    ValueEncoderContext add(String str);

    ValueEncoderContext add(boolean z4);

    ValueEncoderContext add(byte[] bArr);
}
