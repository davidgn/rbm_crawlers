package com.google.protobuf;

import java.io.OutputStream;
/* renamed from: com.google.protobuf.t0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC0357t0 extends InterfaceC0359u0 {
    B0 getParserForType();

    int getSerializedSize();

    InterfaceC0355s0 newBuilderForType();

    byte[] toByteArray();

    void writeTo(AbstractC0358u abstractC0358u);

    void writeTo(OutputStream outputStream);
}
