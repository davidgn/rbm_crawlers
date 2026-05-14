package S1;

import C4.F;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final String f2556a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f2557b;

    /* renamed from: c  reason: collision with root package name */
    public final l f2558c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2559d;

    /* renamed from: e  reason: collision with root package name */
    public final long f2560e;

    /* renamed from: f  reason: collision with root package name */
    public final HashMap f2561f;

    public i(String str, Integer num, l lVar, long j5, long j6, HashMap hashMap) {
        this.f2556a = str;
        this.f2557b = num;
        this.f2558c = lVar;
        this.f2559d = j5;
        this.f2560e = j6;
        this.f2561f = hashMap;
    }

    public final String a(String str) {
        String str2 = (String) this.f2561f.get(str);
        return str2 == null ? "" : str2;
    }

    public final int b(String str) {
        String str2 = (String) this.f2561f.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final F c() {
        F f5 = new F(2);
        String str = this.f2556a;
        if (str != null) {
            f5.f407b = str;
            f5.f408c = this.f2557b;
            l lVar = this.f2558c;
            if (lVar != null) {
                f5.f409d = lVar;
                f5.f410e = Long.valueOf(this.f2559d);
                f5.f411f = Long.valueOf(this.f2560e);
                f5.f412g = new HashMap(this.f2561f);
                return f5;
            }
            throw new NullPointerException("Null encodedPayload");
        }
        throw new NullPointerException("Null transportName");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.f2556a.equals(iVar.f2556a)) {
                Integer num = iVar.f2557b;
                Integer num2 = this.f2557b;
                if (num2 != null ? num2.equals(num) : num == null) {
                    if (this.f2558c.equals(iVar.f2558c) && this.f2559d == iVar.f2559d && this.f2560e == iVar.f2560e && this.f2561f.equals(iVar.f2561f)) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f2556a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f2557b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        long j5 = this.f2559d;
        long j6 = this.f2560e;
        return ((((((((hashCode ^ hashCode2) * 1000003) ^ this.f2558c.hashCode()) * 1000003) ^ ((int) (j5 ^ (j5 >>> 32)))) * 1000003) ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003) ^ this.f2561f.hashCode();
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f2556a + ", code=" + this.f2557b + ", encodedPayload=" + this.f2558c + ", eventMillis=" + this.f2559d + ", uptimeMillis=" + this.f2560e + ", autoMetadata=" + this.f2561f + "}";
    }
}
