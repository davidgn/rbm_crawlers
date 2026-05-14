package R1;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class n extends u {

    /* renamed from: a  reason: collision with root package name */
    public final long f2466a;

    /* renamed from: b  reason: collision with root package name */
    public final long f2467b;

    /* renamed from: c  reason: collision with root package name */
    public final k f2468c;

    /* renamed from: d  reason: collision with root package name */
    public final Integer f2469d;

    /* renamed from: e  reason: collision with root package name */
    public final String f2470e;

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList f2471f;

    public n(long j5, long j6, k kVar, Integer num, String str, ArrayList arrayList) {
        y yVar = y.f2481a;
        this.f2466a = j5;
        this.f2467b = j6;
        this.f2468c = kVar;
        this.f2469d = num;
        this.f2470e = str;
        this.f2471f = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u) {
            n nVar = (n) ((u) obj);
            if (this.f2466a == nVar.f2466a) {
                if (this.f2467b == nVar.f2467b) {
                    if (this.f2468c.equals(nVar.f2468c)) {
                        Integer num = nVar.f2469d;
                        Integer num2 = this.f2469d;
                        if (num2 != null ? num2.equals(num) : num == null) {
                            String str = nVar.f2470e;
                            String str2 = this.f2470e;
                            if (str2 != null ? str2.equals(str) : str == null) {
                                if (this.f2471f.equals(nVar.f2471f)) {
                                    Object obj2 = y.f2481a;
                                    if (obj2.equals(obj2)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        long j5 = this.f2466a;
        long j6 = this.f2467b;
        int hashCode = (((((((int) (j5 ^ (j5 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j6 >>> 32) ^ j6))) * 1000003) ^ this.f2468c.hashCode()) * 1000003;
        Integer num = this.f2469d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f2470e;
        return ((((hashCode2 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ this.f2471f.hashCode()) * 1000003) ^ y.f2481a.hashCode();
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f2466a + ", requestUptimeMs=" + this.f2467b + ", clientInfo=" + this.f2468c + ", logSource=" + this.f2469d + ", logSourceName=" + this.f2470e + ", logEvents=" + this.f2471f + ", qosTier=" + y.f2481a + "}";
    }
}
