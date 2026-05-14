package L;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import kotlin.jvm.internal.i;
import s.C0821b;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public final Object[] f1622a;

    /* renamed from: b  reason: collision with root package name */
    public int f1623b;

    public c(int i) {
        if (i > 0) {
            this.f1622a = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    public Object a() {
        int i = this.f1623b;
        if (i > 0) {
            int i4 = i - 1;
            Object[] objArr = this.f1622a;
            Object obj = objArr[i4];
            i.d(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
            objArr[i4] = null;
            this.f1623b--;
            return obj;
        }
        return null;
    }

    public void b(C0821b c0821b) {
        int i = this.f1623b;
        Object[] objArr = this.f1622a;
        if (i < objArr.length) {
            objArr[i] = c0821b;
            this.f1623b = i + 1;
        }
    }

    public boolean c(Object instance) {
        Object[] objArr;
        boolean z4;
        i.f(instance, "instance");
        int i = this.f1623b;
        int i4 = 0;
        while (true) {
            objArr = this.f1622a;
            if (i4 >= i) {
                z4 = false;
                break;
            } else if (objArr[i4] == instance) {
                z4 = true;
                break;
            } else {
                i4++;
            }
        }
        if (z4) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i5 = this.f1623b;
        if (i5 < objArr.length) {
            objArr[i5] = instance;
            this.f1623b = i5 + 1;
            return true;
        }
        return false;
    }

    public c() {
        this.f1622a = new Object[UserVerificationMethods.USER_VERIFY_HANDPRINT];
    }
}
