package I;

import java.util.Locale;
/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    public static final Locale[] f1101a = {new Locale("en", "XA"), new Locale("ar", "XB")};

    public static Locale a(String str) {
        return Locale.forLanguageTag(str);
    }

    public static boolean b(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return true;
        }
        if (locale.getLanguage().equals(locale2.getLanguage())) {
            Locale[] localeArr = f1101a;
            int length = localeArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    for (Locale locale3 : localeArr) {
                        if (!locale3.equals(locale2)) {
                        }
                    }
                    String c5 = K.c.c(K.c.a(K.c.b(locale)));
                    if (c5.isEmpty()) {
                        String country = locale.getCountry();
                        return country.isEmpty() || country.equals(locale2.getCountry());
                    }
                    return c5.equals(K.c.c(K.c.a(K.c.b(locale2))));
                } else if (localeArr[i].equals(locale)) {
                    break;
                } else {
                    i++;
                }
            }
            return false;
        }
        return false;
    }
}
