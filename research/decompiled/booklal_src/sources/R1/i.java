package R1;
/* loaded from: classes.dex */
public final class i extends a {

    /* renamed from: a  reason: collision with root package name */
    public final Integer f2439a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2440b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2441c;

    /* renamed from: d  reason: collision with root package name */
    public final String f2442d;

    /* renamed from: e  reason: collision with root package name */
    public final String f2443e;

    /* renamed from: f  reason: collision with root package name */
    public final String f2444f;

    /* renamed from: g  reason: collision with root package name */
    public final String f2445g;

    /* renamed from: h  reason: collision with root package name */
    public final String f2446h;
    public final String i;

    /* renamed from: j  reason: collision with root package name */
    public final String f2447j;

    /* renamed from: k  reason: collision with root package name */
    public final String f2448k;

    /* renamed from: l  reason: collision with root package name */
    public final String f2449l;

    public i(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f2439a = num;
        this.f2440b = str;
        this.f2441c = str2;
        this.f2442d = str3;
        this.f2443e = str4;
        this.f2444f = str5;
        this.f2445g = str6;
        this.f2446h = str7;
        this.i = str8;
        this.f2447j = str9;
        this.f2448k = str10;
        this.f2449l = str11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            Integer num = this.f2439a;
            if (num != null ? num.equals(((i) aVar).f2439a) : ((i) aVar).f2439a == null) {
                String str = this.f2440b;
                if (str != null ? str.equals(((i) aVar).f2440b) : ((i) aVar).f2440b == null) {
                    String str2 = this.f2441c;
                    if (str2 != null ? str2.equals(((i) aVar).f2441c) : ((i) aVar).f2441c == null) {
                        String str3 = this.f2442d;
                        if (str3 != null ? str3.equals(((i) aVar).f2442d) : ((i) aVar).f2442d == null) {
                            String str4 = this.f2443e;
                            if (str4 != null ? str4.equals(((i) aVar).f2443e) : ((i) aVar).f2443e == null) {
                                String str5 = this.f2444f;
                                if (str5 != null ? str5.equals(((i) aVar).f2444f) : ((i) aVar).f2444f == null) {
                                    String str6 = this.f2445g;
                                    if (str6 != null ? str6.equals(((i) aVar).f2445g) : ((i) aVar).f2445g == null) {
                                        String str7 = this.f2446h;
                                        if (str7 != null ? str7.equals(((i) aVar).f2446h) : ((i) aVar).f2446h == null) {
                                            String str8 = this.i;
                                            if (str8 != null ? str8.equals(((i) aVar).i) : ((i) aVar).i == null) {
                                                String str9 = this.f2447j;
                                                if (str9 != null ? str9.equals(((i) aVar).f2447j) : ((i) aVar).f2447j == null) {
                                                    String str10 = this.f2448k;
                                                    if (str10 != null ? str10.equals(((i) aVar).f2448k) : ((i) aVar).f2448k == null) {
                                                        String str11 = this.f2449l;
                                                        if (str11 == null) {
                                                            if (((i) aVar).f2449l == null) {
                                                                return true;
                                                            }
                                                        } else if (str11.equals(((i) aVar).f2449l)) {
                                                            return true;
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
        Integer num = this.f2439a;
        int hashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f2440b;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f2441c;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f2442d;
        int hashCode4 = (hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f2443e;
        int hashCode5 = (hashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f2444f;
        int hashCode6 = (hashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f2445g;
        int hashCode7 = (hashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f2446h;
        int hashCode8 = (hashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.i;
        int hashCode9 = (hashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f2447j;
        int hashCode10 = (hashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f2448k;
        int hashCode11 = (hashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f2449l;
        return (str11 != null ? str11.hashCode() : 0) ^ hashCode11;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f2439a);
        sb.append(", model=");
        sb.append(this.f2440b);
        sb.append(", hardware=");
        sb.append(this.f2441c);
        sb.append(", device=");
        sb.append(this.f2442d);
        sb.append(", product=");
        sb.append(this.f2443e);
        sb.append(", osBuild=");
        sb.append(this.f2444f);
        sb.append(", manufacturer=");
        sb.append(this.f2445g);
        sb.append(", fingerprint=");
        sb.append(this.f2446h);
        sb.append(", locale=");
        sb.append(this.i);
        sb.append(", country=");
        sb.append(this.f2447j);
        sb.append(", mccMnc=");
        sb.append(this.f2448k);
        sb.append(", applicationBuild=");
        return C.a.p(sb, this.f2449l, "}");
    }
}
