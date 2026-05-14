package J4;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
/* loaded from: classes2.dex */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public int f1216a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f1217b = new int[10];

    public final int a() {
        if ((this.f1216a & UserVerificationMethods.USER_VERIFY_PATTERN) != 0) {
            return this.f1217b[7];
        }
        return 65535;
    }

    public final void b(B other) {
        kotlin.jvm.internal.i.f(other, "other");
        for (int i = 0; i < 10; i++) {
            if (((1 << i) & other.f1216a) != 0) {
                c(i, other.f1217b[i]);
            }
        }
    }

    public final void c(int i, int i4) {
        if (i >= 0) {
            int[] iArr = this.f1217b;
            if (i >= iArr.length) {
                return;
            }
            this.f1216a = (1 << i) | this.f1216a;
            iArr[i] = i4;
        }
    }
}
