package C4;

import java.util.concurrent.TimeUnit;
/* renamed from: C4.i  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0032i {

    /* renamed from: n  reason: collision with root package name */
    public static final C0032i f492n;

    /* renamed from: a  reason: collision with root package name */
    public final boolean f493a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f494b;

    /* renamed from: c  reason: collision with root package name */
    public final int f495c;

    /* renamed from: d  reason: collision with root package name */
    public final int f496d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f497e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f498f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f499g;

    /* renamed from: h  reason: collision with root package name */
    public final int f500h;
    public final int i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f501j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f502k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f503l;

    /* renamed from: m  reason: collision with root package name */
    public String f504m;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        kotlin.jvm.internal.i.f(timeUnit, "timeUnit");
        long seconds = timeUnit.toSeconds(Integer.MAX_VALUE);
        f492n = new C0032i(false, false, -1, -1, false, false, false, seconds <= 2147483647L ? (int) seconds : Integer.MAX_VALUE, -1, true, false, false, null);
    }

    public C0032i(boolean z4, boolean z5, int i, int i4, boolean z6, boolean z7, boolean z8, int i5, int i6, boolean z9, boolean z10, boolean z11, String str) {
        this.f493a = z4;
        this.f494b = z5;
        this.f495c = i;
        this.f496d = i4;
        this.f497e = z6;
        this.f498f = z7;
        this.f499g = z8;
        this.f500h = i5;
        this.i = i6;
        this.f501j = z9;
        this.f502k = z10;
        this.f503l = z11;
        this.f504m = str;
    }

    public final String toString() {
        String str = this.f504m;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.f493a) {
                sb.append("no-cache, ");
            }
            if (this.f494b) {
                sb.append("no-store, ");
            }
            int i = this.f495c;
            if (i != -1) {
                sb.append("max-age=");
                sb.append(i);
                sb.append(", ");
            }
            int i4 = this.f496d;
            if (i4 != -1) {
                sb.append("s-maxage=");
                sb.append(i4);
                sb.append(", ");
            }
            if (this.f497e) {
                sb.append("private, ");
            }
            if (this.f498f) {
                sb.append("public, ");
            }
            if (this.f499g) {
                sb.append("must-revalidate, ");
            }
            int i5 = this.f500h;
            if (i5 != -1) {
                sb.append("max-stale=");
                sb.append(i5);
                sb.append(", ");
            }
            int i6 = this.i;
            if (i6 != -1) {
                sb.append("min-fresh=");
                sb.append(i6);
                sb.append(", ");
            }
            if (this.f501j) {
                sb.append("only-if-cached, ");
            }
            if (this.f502k) {
                sb.append("no-transform, ");
            }
            if (this.f503l) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                return "";
            }
            sb.delete(sb.length() - 2, sb.length());
            String sb2 = sb.toString();
            kotlin.jvm.internal.i.e(sb2, "StringBuilder().apply(builderAction).toString()");
            this.f504m = sb2;
            return sb2;
        }
        return str;
    }
}
