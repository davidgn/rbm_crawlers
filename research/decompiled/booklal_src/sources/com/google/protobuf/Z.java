package com.google.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public abstract class Z {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f6673a;

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f6674b;

    /* renamed from: c  reason: collision with root package name */
    public static final ByteBuffer f6675c;

    static {
        Charset.forName("US-ASCII");
        f6673a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f6674b = bArr;
        f6675c = ByteBuffer.wrap(bArr);
        r.f(bArr, 0, 0, false);
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static int b(long j5) {
        return (int) (j5 ^ (j5 >>> 32));
    }
}
