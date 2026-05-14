package androidx.emoji2.text;

import M.K;
import b0.C0277a;
import b0.C0278b;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: d  reason: collision with root package name */
    public static final ThreadLocal f4092d = new ThreadLocal();

    /* renamed from: a  reason: collision with root package name */
    public final int f4093a;

    /* renamed from: b  reason: collision with root package name */
    public final R0.i f4094b;

    /* renamed from: c  reason: collision with root package name */
    public volatile int f4095c = 0;

    public l(R0.i iVar, int i) {
        this.f4094b = iVar;
        this.f4093a = i;
    }

    public final int a(int i) {
        C0277a c5 = c();
        int a5 = c5.a(16);
        if (a5 != 0) {
            ByteBuffer byteBuffer = (ByteBuffer) c5.f1803d;
            int i4 = a5 + c5.f1800a;
            return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i4) + i4 + 4);
        }
        return 0;
    }

    public final int b() {
        C0277a c5 = c();
        int a5 = c5.a(16);
        if (a5 != 0) {
            int i = a5 + c5.f1800a;
            return ((ByteBuffer) c5.f1803d).getInt(((ByteBuffer) c5.f1803d).getInt(i) + i);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, M.K] */
    public final C0277a c() {
        ThreadLocal threadLocal = f4092d;
        C0277a c0277a = (C0277a) threadLocal.get();
        C0277a c0277a2 = c0277a;
        if (c0277a == null) {
            ?? k5 = new K();
            threadLocal.set(k5);
            c0277a2 = k5;
        }
        C0278b c0278b = (C0278b) this.f4094b.f2398a;
        int a5 = c0278b.a(6);
        if (a5 != 0) {
            int i = a5 + c0278b.f1800a;
            int i4 = (this.f4093a * 4) + ((ByteBuffer) c0278b.f1803d).getInt(i) + i + 4;
            int i5 = ((ByteBuffer) c0278b.f1803d).getInt(i4) + i4;
            ByteBuffer byteBuffer = (ByteBuffer) c0278b.f1803d;
            c0277a2.f1803d = byteBuffer;
            if (byteBuffer != null) {
                c0277a2.f1800a = i5;
                int i6 = i5 - byteBuffer.getInt(i5);
                c0277a2.f1801b = i6;
                c0277a2.f1802c = ((ByteBuffer) c0277a2.f1803d).getShort(i6);
            } else {
                c0277a2.f1800a = 0;
                c0277a2.f1801b = 0;
                c0277a2.f1802c = 0;
            }
        }
        return c0277a2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        C0277a c5 = c();
        int a5 = c5.a(4);
        sb.append(Integer.toHexString(a5 != 0 ? ((ByteBuffer) c5.f1803d).getInt(a5 + c5.f1800a) : 0));
        sb.append(", codepoints:");
        int b5 = b();
        for (int i = 0; i < b5; i++) {
            sb.append(Integer.toHexString(a(i)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
