package t3;
/* loaded from: classes2.dex */
public final class c extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f10327a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10328b;

    public c(int i, String str) {
        super(str);
        this.f10328b = str;
        this.f10327a = i;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder("Error type: ");
        int i = this.f10327a;
        sb.append(i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "null" : "TOO_LONG" : "TOO_SHORT_NSN" : "TOO_SHORT_AFTER_IDD" : "NOT_A_NUMBER" : "INVALID_COUNTRY_CODE");
        sb.append(". ");
        sb.append(this.f10328b);
        return sb.toString();
    }
}
