package K;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f1348e = new byte[1792];

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f1349a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1350b;

    /* renamed from: c  reason: collision with root package name */
    public int f1351c;

    /* renamed from: d  reason: collision with root package name */
    public char f1352d;

    static {
        for (int i = 0; i < 1792; i++) {
            f1348e[i] = Character.getDirectionality(i);
        }
    }

    public a(CharSequence charSequence) {
        this.f1349a = charSequence;
        this.f1350b = charSequence.length();
    }

    public final byte a() {
        CharSequence charSequence = this.f1349a;
        char charAt = charSequence.charAt(this.f1351c - 1);
        this.f1352d = charAt;
        if (Character.isLowSurrogate(charAt)) {
            int codePointBefore = Character.codePointBefore(charSequence, this.f1351c);
            this.f1351c -= Character.charCount(codePointBefore);
            return Character.getDirectionality(codePointBefore);
        }
        this.f1351c--;
        char c5 = this.f1352d;
        return c5 < 1792 ? f1348e[c5] : Character.getDirectionality(c5);
    }
}
