package n3;

import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f9611a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9612b;

    /* renamed from: c  reason: collision with root package name */
    public int f9613c;

    /* renamed from: d  reason: collision with root package name */
    public int f9614d;

    /* renamed from: e  reason: collision with root package name */
    public int f9615e;

    /* renamed from: f  reason: collision with root package name */
    public int f9616f;

    /* renamed from: g  reason: collision with root package name */
    public char[] f9617g;

    public c(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f9611a = name;
        this.f9612b = name.length();
    }

    public final int a(int i) {
        int i4;
        int i5;
        int i6 = i + 1;
        int i7 = this.f9612b;
        String str = this.f9611a;
        if (i6 >= i7) {
            throw new IllegalStateException("Malformed DN: " + str);
        }
        char[] cArr = this.f9617g;
        char c5 = cArr[i];
        if (c5 >= '0' && c5 <= '9') {
            i4 = c5 - '0';
        } else if (c5 >= 'a' && c5 <= 'f') {
            i4 = c5 - 'W';
        } else if (c5 < 'A' || c5 > 'F') {
            throw new IllegalStateException("Malformed DN: " + str);
        } else {
            i4 = c5 - '7';
        }
        char c6 = cArr[i6];
        if (c6 >= '0' && c6 <= '9') {
            i5 = c6 - '0';
        } else if (c6 >= 'a' && c6 <= 'f') {
            i5 = c6 - 'W';
        } else if (c6 < 'A' || c6 > 'F') {
            throw new IllegalStateException("Malformed DN: " + str);
        } else {
            i5 = c6 - '7';
        }
        return (i4 << 4) + i5;
    }

    public final char b() {
        int i;
        int i4 = this.f9613c + 1;
        this.f9613c = i4;
        int i5 = this.f9612b;
        if (i4 == i5) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f9611a);
        }
        char c5 = this.f9617g[i4];
        if (c5 != ' ' && c5 != '%' && c5 != '\\' && c5 != '_' && c5 != '\"' && c5 != '#') {
            switch (c5) {
                case '*':
                case '+':
                case ',':
                    break;
                default:
                    switch (c5) {
                        case ';':
                        case FirestoreIndexValueWriter.INDEX_TYPE_REFERENCE_SEGMENT /* 60 */:
                        case '=':
                        case '>':
                            break;
                        default:
                            int a5 = a(i4);
                            this.f9613c++;
                            if (a5 >= 128) {
                                if (a5 >= 192 && a5 <= 247) {
                                    if (a5 <= 223) {
                                        a5 &= 31;
                                        i = 1;
                                    } else if (a5 <= 239) {
                                        a5 &= 15;
                                        i = 2;
                                    } else {
                                        a5 &= 7;
                                        i = 3;
                                    }
                                    for (int i6 = 0; i6 < i; i6++) {
                                        int i7 = this.f9613c;
                                        int i8 = i7 + 1;
                                        this.f9613c = i8;
                                        if (i8 != i5 && this.f9617g[i8] == '\\') {
                                            int i9 = i7 + 2;
                                            this.f9613c = i9;
                                            int a6 = a(i9);
                                            this.f9613c++;
                                            if ((a6 & 192) == 128) {
                                                a5 = (a5 << 6) + (a6 & 63);
                                            }
                                        }
                                    }
                                }
                                return '?';
                            }
                            return (char) a5;
                    }
            }
        }
        return c5;
    }

    public final String c() {
        int i;
        int i4;
        int i5;
        char c5;
        int i6;
        char c6;
        char c7;
        while (true) {
            i = this.f9613c;
            i4 = this.f9612b;
            if (i >= i4 || this.f9617g[i] != ' ') {
                break;
            }
            this.f9613c = i + 1;
        }
        if (i == i4) {
            return null;
        }
        this.f9614d = i;
        this.f9613c = i + 1;
        while (true) {
            i5 = this.f9613c;
            if (i5 >= i4 || (c7 = this.f9617g[i5]) == '=' || c7 == ' ') {
                break;
            }
            this.f9613c = i5 + 1;
        }
        String str = this.f9611a;
        if (i5 >= i4) {
            throw new IllegalStateException("Unexpected end of DN: " + str);
        }
        this.f9615e = i5;
        if (this.f9617g[i5] == ' ') {
            while (true) {
                i6 = this.f9613c;
                if (i6 >= i4 || (c6 = this.f9617g[i6]) == '=' || c6 != ' ') {
                    break;
                }
                this.f9613c = i6 + 1;
            }
            if (this.f9617g[i6] != '=' || i6 == i4) {
                throw new IllegalStateException("Unexpected end of DN: " + str);
            }
        }
        this.f9613c++;
        while (true) {
            int i7 = this.f9613c;
            if (i7 >= i4 || this.f9617g[i7] != ' ') {
                break;
            }
            this.f9613c = i7 + 1;
        }
        int i8 = this.f9615e;
        int i9 = this.f9614d;
        if (i8 - i9 > 4) {
            char[] cArr = this.f9617g;
            if (cArr[i9 + 3] == '.' && (((c5 = cArr[i9]) == 'O' || c5 == 'o') && ((cArr[i9 + 1] == 'I' || cArr[i9 + 1] == 'i') && (cArr[i9 + 2] == 'D' || cArr[i9 + 2] == 'd')))) {
                this.f9614d = i9 + 4;
            }
        }
        char[] cArr2 = this.f9617g;
        int i10 = this.f9614d;
        return new String(cArr2, i10, i8 - i10);
    }
}
