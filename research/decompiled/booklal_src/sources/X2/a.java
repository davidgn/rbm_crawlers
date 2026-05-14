package X2;

import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import e1.i;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import s.AbstractC0824e;
/* loaded from: classes2.dex */
public final class a implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final StringReader f3096a;

    /* renamed from: m  reason: collision with root package name */
    public long f3103m;

    /* renamed from: n  reason: collision with root package name */
    public int f3104n;
    public String o;

    /* renamed from: p  reason: collision with root package name */
    public int[] f3105p;

    /* renamed from: r  reason: collision with root package name */
    public String[] f3107r;

    /* renamed from: s  reason: collision with root package name */
    public int[] f3108s;

    /* renamed from: b  reason: collision with root package name */
    public final char[] f3097b = new char[UserVerificationMethods.USER_VERIFY_ALL];

    /* renamed from: c  reason: collision with root package name */
    public int f3098c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f3099d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f3100e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f3101f = 0;

    /* renamed from: l  reason: collision with root package name */
    public int f3102l = 0;

    /* renamed from: q  reason: collision with root package name */
    public int f3106q = 1;

    public a(StringReader stringReader) {
        int[] iArr = new int[32];
        this.f3105p = iArr;
        iArr[0] = 6;
        this.f3107r = new String[32];
        this.f3108s = new int[32];
        this.f3096a = stringReader;
    }

    public final void b() {
        v("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:140:0x019c, code lost:
        if (r12 != 6) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01ae, code lost:
        if (m(r10) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x01b0, code lost:
        if (r12 != 2) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x01b2, code lost:
        if (r13 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x01b8, code lost:
        if (r14 != Long.MIN_VALUE) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x01ba, code lost:
        if (r16 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x01be, code lost:
        if (r14 != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01c0, code lost:
        if (r16 != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x01c2, code lost:
        if (r16 == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x01c5, code lost:
        r14 = -r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x01c6, code lost:
        r20.f3103m = r14;
        r20.f3098c += r5;
        r9 = 15;
        r20.f3102l = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x01d2, code lost:
        if (r12 == 2) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x01d5, code lost:
        if (r12 == 4) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x01d8, code lost:
        if (r12 != 7) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x01da, code lost:
        r20.f3104n = r5;
        r9 = 16;
        r20.f3102l = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0215 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0117 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c() {
        /*
            Method dump skipped, instructions count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: X2.a.c():int");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f3102l = 0;
        this.f3105p[0] = 8;
        this.f3106q = 1;
        this.f3096a.close();
    }

    public final boolean e(int i) {
        int i4;
        int i5;
        int i6 = this.f3101f;
        int i7 = this.f3098c;
        this.f3101f = i6 - i7;
        int i8 = this.f3099d;
        char[] cArr = this.f3097b;
        if (i8 != i7) {
            int i9 = i8 - i7;
            this.f3099d = i9;
            System.arraycopy(cArr, i7, cArr, 0, i9);
        } else {
            this.f3099d = 0;
        }
        this.f3098c = 0;
        do {
            int i10 = this.f3099d;
            int read = this.f3096a.read(cArr, i10, cArr.length - i10);
            if (read == -1) {
                return false;
            }
            i4 = this.f3099d + read;
            this.f3099d = i4;
            if (this.f3100e == 0 && (i5 = this.f3101f) == 0 && i4 > 0 && cArr[0] == 65279) {
                this.f3098c++;
                this.f3101f = i5 + 1;
                i++;
                continue;
            }
        } while (i4 < i);
        return true;
    }

    public final String f() {
        StringBuilder sb = new StringBuilder("$");
        for (int i = 0; i < this.f3106q; i++) {
            int i4 = this.f3105p[i];
            if (i4 == 1 || i4 == 2) {
                int i5 = this.f3108s[i];
                sb.append('[');
                sb.append(i5);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String str = this.f3107r[i];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public final boolean g() {
        int i = this.f3102l;
        if (i == 0) {
            i = c();
        }
        return (i == 2 || i == 4 || i == 17) ? false : true;
    }

    public final boolean m(char c5) {
        if (c5 == '\t' || c5 == '\n' || c5 == '\f' || c5 == '\r' || c5 == ' ') {
            return false;
        }
        if (c5 != '#') {
            if (c5 == ',') {
                return false;
            }
            if (c5 != '/' && c5 != '=') {
                if (c5 == '{' || c5 == '}' || c5 == ':') {
                    return false;
                }
                if (c5 != ';') {
                    switch (c5) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        b();
        throw null;
    }

    public final String n() {
        StringBuilder g5 = i.g(" at line ", this.f3100e + 1, " column ", (this.f3098c - this.f3101f) + 1, " path ");
        g5.append(f());
        return g5.toString();
    }

    public final int q(boolean z4) {
        int i = this.f3098c;
        int i4 = this.f3099d;
        while (true) {
            if (i == i4) {
                this.f3098c = i;
                if (!e(1)) {
                    if (z4) {
                        throw new EOFException("End of input" + n());
                    }
                    return -1;
                }
                i = this.f3098c;
                i4 = this.f3099d;
            }
            int i5 = i + 1;
            char c5 = this.f3097b[i];
            if (c5 == '\n') {
                this.f3100e++;
                this.f3101f = i5;
            } else if (c5 != ' ' && c5 != '\r' && c5 != '\t') {
                if (c5 != '/') {
                    if (c5 != '#') {
                        this.f3098c = i5;
                        return c5;
                    }
                    this.f3098c = i5;
                    b();
                    throw null;
                }
                this.f3098c = i5;
                if (i5 == i4) {
                    this.f3098c = i;
                    boolean e5 = e(2);
                    this.f3098c++;
                    if (!e5) {
                        return c5;
                    }
                }
                b();
                throw null;
            }
            i = i5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x00fe, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
        r11.f3098c = r8;
        r8 = r8 - r3;
        r2 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
        if (r1 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
        r1 = new java.lang.StringBuilder(java.lang.Math.max(r8 * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
        r1.append(r5, r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r11.f3098c != r11.f3099d) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
        if (e(1) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
        v("Unterminated escape sequence");
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
        r2 = r11.f3098c;
        r3 = r2 + 1;
        r11.f3098c = r3;
        r7 = r5[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005f, code lost:
        if (r7 == '\n') goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
        if (r7 == '\"') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
        if (r7 == '\'') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
        if (r7 == '/') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006d, code lost:
        if (r7 == '\\') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0071, code lost:
        if (r7 == 'b') goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
        if (r7 == 'f') goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0079, code lost:
        if (r7 == 'n') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007d, code lost:
        if (r7 == 'r') goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0081, code lost:
        if (r7 == 't') goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0085, code lost:
        if (r7 != 'u') goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008c, code lost:
        if ((r2 + 5) <= r11.f3099d) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0092, code lost:
        if (e(4) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0095, code lost:
        v("Unterminated escape sequence");
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0098, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0099, code lost:
        r2 = r11.f3098c;
        r4 = r2 + 4;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x009f, code lost:
        if (r2 >= r4) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a1, code lost:
        r6 = r5[r2];
        r8 = (char) (r9 << 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00a8, code lost:
        if (r6 < '0') goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ac, code lost:
        if (r6 > '9') goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ae, code lost:
        r6 = r6 - '0';
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b0, code lost:
        r9 = (char) (r6 + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b6, code lost:
        if (r6 < 'a') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b8, code lost:
        if (r6 > 'f') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ba, code lost:
        r6 = r6 - 'W';
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00bf, code lost:
        if (r6 < 'A') goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c3, code lost:
        if (r6 > 'F') goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00c5, code lost:
        r6 = r6 - '7';
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00c8, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00dd, code lost:
        throw new java.lang.NumberFormatException("\\u".concat(new java.lang.String(r5, r11.f3098c, 4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00de, code lost:
        r11.f3098c += 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00e4, code lost:
        v("Invalid escape sequence");
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00e9, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00ea, code lost:
        r9 = '\t';
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ed, code lost:
        r9 = '\r';
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00f0, code lost:
        r9 = '\f';
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00f3, code lost:
        r9 = '\b';
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00f6, code lost:
        r11.f3100e++;
        r11.f3101f = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00fd, code lost:
        r9 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0113, code lost:
        if (r1 != null) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0115, code lost:
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0123, code lost:
        r1.append(r5, r3, r2 - r3);
        r11.f3098c = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String r(char r12) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: X2.a.r(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004b, code lost:
        b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004e, code lost:
        throw null;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String s() {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            r3 = r0
        L3:
            r2 = r1
        L4:
            int r4 = r8.f3098c
            int r5 = r4 + r2
            int r6 = r8.f3099d
            char[] r7 = r8.f3097b
            if (r5 >= r6) goto L4f
            int r4 = r4 + r2
            char r4 = r7[r4]
            r5 = 9
            if (r4 == r5) goto L5b
            r5 = 10
            if (r4 == r5) goto L5b
            r5 = 12
            if (r4 == r5) goto L5b
            r5 = 13
            if (r4 == r5) goto L5b
            r5 = 32
            if (r4 == r5) goto L5b
            r5 = 35
            if (r4 == r5) goto L4b
            r5 = 44
            if (r4 == r5) goto L5b
            r5 = 47
            if (r4 == r5) goto L4b
            r5 = 61
            if (r4 == r5) goto L4b
            r5 = 123(0x7b, float:1.72E-43)
            if (r4 == r5) goto L5b
            r5 = 125(0x7d, float:1.75E-43)
            if (r4 == r5) goto L5b
            r5 = 58
            if (r4 == r5) goto L5b
            r5 = 59
            if (r4 == r5) goto L4b
            switch(r4) {
                case 91: goto L5b;
                case 92: goto L4b;
                case 93: goto L5b;
                default: goto L48;
            }
        L48:
            int r2 = r2 + 1
            goto L4
        L4b:
            r8.b()
            throw r0
        L4f:
            int r4 = r7.length
            if (r2 >= r4) goto L5d
            int r4 = r2 + 1
            boolean r4 = r8.e(r4)
            if (r4 == 0) goto L5b
            goto L4
        L5b:
            r1 = r2
            goto L7b
        L5d:
            if (r3 != 0) goto L6a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r4 = 16
            int r4 = java.lang.Math.max(r2, r4)
            r3.<init>(r4)
        L6a:
            int r4 = r8.f3098c
            r3.append(r7, r4, r2)
            int r4 = r8.f3098c
            int r4 = r4 + r2
            r8.f3098c = r4
            r2 = 1
            boolean r2 = r8.e(r2)
            if (r2 != 0) goto L3
        L7b:
            if (r3 != 0) goto L85
            java.lang.String r0 = new java.lang.String
            int r2 = r8.f3098c
            r0.<init>(r7, r2, r1)
            goto L8e
        L85:
            int r0 = r8.f3098c
            r3.append(r7, r0, r1)
            java.lang.String r0 = r3.toString()
        L8e:
            int r2 = r8.f3098c
            int r2 = r2 + r1
            r8.f3098c = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X2.a.s():java.lang.String");
    }

    public final int t() {
        int i = this.f3102l;
        if (i == 0) {
            i = c();
        }
        switch (i) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final String toString() {
        return a.class.getSimpleName() + n();
    }

    public final void u(int i) {
        int i4 = this.f3106q;
        int[] iArr = this.f3105p;
        if (i4 == iArr.length) {
            int i5 = i4 * 2;
            this.f3105p = Arrays.copyOf(iArr, i5);
            this.f3108s = Arrays.copyOf(this.f3108s, i5);
            this.f3107r = (String[]) Arrays.copyOf(this.f3107r, i5);
        }
        int[] iArr2 = this.f3105p;
        int i6 = this.f3106q;
        this.f3106q = i6 + 1;
        iArr2[i6] = i;
    }

    public final void v(String str) {
        StringBuilder b5 = AbstractC0824e.b(str);
        b5.append(n());
        throw new IOException(b5.toString());
    }
}
