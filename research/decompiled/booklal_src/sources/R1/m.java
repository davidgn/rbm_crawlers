package R1;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class m extends t {

    /* renamed from: a  reason: collision with root package name */
    public final long f2459a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f2460b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2461c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f2462d;

    /* renamed from: e  reason: collision with root package name */
    public final String f2463e;

    /* renamed from: f  reason: collision with root package name */
    public final long f2464f;

    /* renamed from: g  reason: collision with root package name */
    public final p f2465g;

    public m(long j5, Integer num, long j6, byte[] bArr, String str, long j7, p pVar) {
        this.f2459a = j5;
        this.f2460b = num;
        this.f2461c = j6;
        this.f2462d = bArr;
        this.f2463e = str;
        this.f2464f = j7;
        this.f2465g = pVar;
    }

    public final boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            m mVar = (m) tVar;
            if (this.f2459a == mVar.f2459a && ((num = this.f2460b) != null ? num.equals(mVar.f2460b) : mVar.f2460b == null)) {
                if (this.f2461c == mVar.f2461c) {
                    if (Arrays.equals(this.f2462d, tVar instanceof m ? ((m) tVar).f2462d : mVar.f2462d)) {
                        String str = mVar.f2463e;
                        String str2 = this.f2463e;
                        if (str2 != null ? str2.equals(str) : str == null) {
                            if (this.f2464f == mVar.f2464f) {
                                p pVar = mVar.f2465g;
                                p pVar2 = this.f2465g;
                                if (pVar2 == null) {
                                    if (pVar == null) {
                                        return true;
                                    }
                                } else if (pVar2.equals(pVar)) {
                                    return true;
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
        long j5 = this.f2459a;
        int i = (((int) (j5 ^ (j5 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f2460b;
        int hashCode = num == null ? 0 : num.hashCode();
        long j6 = this.f2461c;
        int hashCode2 = (((((i ^ hashCode) * 1000003) ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f2462d)) * 1000003;
        String str = this.f2463e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j7 = this.f2464f;
        int i4 = (((hashCode2 ^ hashCode3) * 1000003) ^ ((int) (j7 ^ (j7 >>> 32)))) * 1000003;
        p pVar = this.f2465g;
        return i4 ^ (pVar != null ? pVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f2459a + ", eventCode=" + this.f2460b + ", eventUptimeMs=" + this.f2461c + ", sourceExtension=" + Arrays.toString(this.f2462d) + ", sourceExtensionJsonProto3=" + this.f2463e + ", timezoneOffsetSeconds=" + this.f2464f + ", networkConnectionInfo=" + this.f2465g + "}";
    }
}
