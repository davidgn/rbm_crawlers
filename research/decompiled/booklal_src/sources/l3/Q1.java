package l3;

import java.util.logging.Logger;
/* loaded from: classes2.dex */
public abstract class Q1 {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f9067a = Logger.getLogger(Q1.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f9068b = "-bin".getBytes(J2.c.f1184a);

    public static boolean a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (length < 0) {
            return false;
        }
        for (int i = length; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i - length]) {
                return false;
            }
        }
        return true;
    }
}
