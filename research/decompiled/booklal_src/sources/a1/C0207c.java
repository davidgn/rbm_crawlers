package a1;

import android.util.Log;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import e1.i;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
/* renamed from: a1.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0207c {

    /* renamed from: b  reason: collision with root package name */
    public ByteBuffer f3559b;

    /* renamed from: c  reason: collision with root package name */
    public C0206b f3560c;

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f3558a = new byte[UserVerificationMethods.USER_VERIFY_HANDPRINT];

    /* renamed from: d  reason: collision with root package name */
    public int f3561d = 0;

    public final boolean a() {
        return this.f3560c.f3549b != 0;
    }

    /* JADX WARN: Type inference failed for: r6v29, types: [java.lang.Object, a1.a] */
    /* JADX WARN: Type inference failed for: r6v37, types: [java.lang.Object, a1.a] */
    public final C0206b b() {
        byte[] bArr;
        if (this.f3559b != null) {
            if (a()) {
                return this.f3560c;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 6; i++) {
                sb.append((char) c());
            }
            if (sb.toString().startsWith("GIF")) {
                this.f3560c.f3553f = this.f3559b.getShort();
                this.f3560c.f3554g = this.f3559b.getShort();
                int c5 = c();
                C0206b c0206b = this.f3560c;
                c0206b.f3555h = (c5 & UserVerificationMethods.USER_VERIFY_PATTERN) != 0;
                c0206b.i = (int) Math.pow(2.0d, (c5 & 7) + 1);
                this.f3560c.f3556j = c();
                C0206b c0206b2 = this.f3560c;
                c();
                c0206b2.getClass();
                if (this.f3560c.f3555h && !a()) {
                    C0206b c0206b3 = this.f3560c;
                    c0206b3.f3548a = e(c0206b3.i);
                    C0206b c0206b4 = this.f3560c;
                    c0206b4.f3557k = c0206b4.f3548a[c0206b4.f3556j];
                }
            } else {
                this.f3560c.f3549b = 1;
            }
            if (!a()) {
                boolean z4 = false;
                while (!z4 && !a() && this.f3560c.f3550c <= Integer.MAX_VALUE) {
                    int c6 = c();
                    if (c6 == 33) {
                        int c7 = c();
                        if (c7 == 1) {
                            f();
                        } else if (c7 == 249) {
                            this.f3560c.f3551d = new Object();
                            c();
                            int c8 = c();
                            C0205a c0205a = this.f3560c.f3551d;
                            int i4 = (c8 & 28) >> 2;
                            c0205a.f3544g = i4;
                            if (i4 == 0) {
                                c0205a.f3544g = 1;
                            }
                            c0205a.f3543f = (c8 & 1) != 0;
                            short s5 = this.f3559b.getShort();
                            if (s5 < 2) {
                                s5 = 10;
                            }
                            C0205a c0205a2 = this.f3560c.f3551d;
                            c0205a2.i = s5 * 10;
                            c0205a2.f3545h = c();
                            c();
                        } else if (c7 == 254) {
                            f();
                        } else if (c7 != 255) {
                            f();
                        } else {
                            d();
                            StringBuilder sb2 = new StringBuilder();
                            int i5 = 0;
                            while (true) {
                                bArr = this.f3558a;
                                if (i5 >= 11) {
                                    break;
                                }
                                sb2.append((char) bArr[i5]);
                                i5++;
                            }
                            if (sb2.toString().equals("NETSCAPE2.0")) {
                                do {
                                    d();
                                    if (bArr[0] == 1) {
                                        byte b5 = bArr[1];
                                        byte b6 = bArr[2];
                                        this.f3560c.getClass();
                                    }
                                    if (this.f3561d > 0) {
                                    }
                                } while (!a());
                            } else {
                                f();
                            }
                        }
                    } else if (c6 == 44) {
                        C0206b c0206b5 = this.f3560c;
                        if (c0206b5.f3551d == null) {
                            c0206b5.f3551d = new Object();
                        }
                        c0206b5.f3551d.f3538a = this.f3559b.getShort();
                        this.f3560c.f3551d.f3539b = this.f3559b.getShort();
                        this.f3560c.f3551d.f3540c = this.f3559b.getShort();
                        this.f3560c.f3551d.f3541d = this.f3559b.getShort();
                        int c9 = c();
                        boolean z5 = (c9 & UserVerificationMethods.USER_VERIFY_PATTERN) != 0;
                        int pow = (int) Math.pow(2.0d, (c9 & 7) + 1);
                        C0205a c0205a3 = this.f3560c.f3551d;
                        c0205a3.f3542e = (c9 & 64) != 0;
                        if (z5) {
                            c0205a3.f3547k = e(pow);
                        } else {
                            c0205a3.f3547k = null;
                        }
                        this.f3560c.f3551d.f3546j = this.f3559b.position();
                        c();
                        f();
                        if (!a()) {
                            C0206b c0206b6 = this.f3560c;
                            c0206b6.f3550c++;
                            c0206b6.f3552e.add(c0206b6.f3551d);
                        }
                    } else if (c6 != 59) {
                        this.f3560c.f3549b = 1;
                    } else {
                        z4 = true;
                    }
                }
                C0206b c0206b7 = this.f3560c;
                if (c0206b7.f3550c < 0) {
                    c0206b7.f3549b = 1;
                }
            }
            return this.f3560c;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    public final int c() {
        try {
            return this.f3559b.get() & 255;
        } catch (Exception unused) {
            this.f3560c.f3549b = 1;
            return 0;
        }
    }

    public final void d() {
        int c5 = c();
        this.f3561d = c5;
        if (c5 <= 0) {
            return;
        }
        int i = 0;
        int i4 = 0;
        while (true) {
            try {
                i4 = this.f3561d;
                if (i >= i4) {
                    return;
                }
                i4 -= i;
                this.f3559b.get(this.f3558a, i, i4);
                i += i4;
            } catch (Exception e5) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder g5 = i.g("Error Reading Block n: ", i, " count: ", i4, " blockSize: ");
                    g5.append(this.f3561d);
                    Log.d("GifHeaderParser", g5.toString(), e5);
                }
                this.f3560c.f3549b = 1;
                return;
            }
        }
    }

    public final int[] e(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f3559b.get(bArr);
            iArr = new int[UserVerificationMethods.USER_VERIFY_HANDPRINT];
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                int i6 = i5 + 2;
                i5 += 3;
                int i7 = i4 + 1;
                iArr[i4] = ((bArr[i5 + 1] & 255) << 8) | ((bArr[i5] & 255) << 16) | (-16777216) | (bArr[i6] & 255);
                i4 = i7;
            }
        } catch (BufferUnderflowException e5) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e5);
            }
            this.f3560c.f3549b = 1;
        }
        return iArr;
    }

    public final void f() {
        int c5;
        do {
            c5 = c();
            this.f3559b.position(Math.min(this.f3559b.position() + c5, this.f3559b.limit()));
        } while (c5 > 0);
    }
}
