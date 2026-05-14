package J2;
/* loaded from: classes2.dex */
public final class b extends a {

    /* renamed from: b  reason: collision with root package name */
    public static final int f1182b = Integer.numberOfLeadingZeros(31);

    /* renamed from: c  reason: collision with root package name */
    public static final b f1183c = new a("CharMatcher.whitespace()");

    @Override // J2.a
    public final boolean a(char c5) {
        return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c5) >>> f1182b) == c5;
    }
}
