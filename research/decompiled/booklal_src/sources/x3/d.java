package x3;

import e1.i;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f11499b = Pattern.compile("^[\\p{L}\\p{N}]+$");

    /* renamed from: a  reason: collision with root package name */
    public final String f11500a;

    public d(String str) {
        this.f11500a = str.concat("_");
    }

    public final String a(Object obj) {
        String obj2 = obj.toString();
        if (f11499b.matcher(obj2).matches()) {
            return this.f11500a + obj;
        }
        throw new IllegalArgumentException(i.e("Invalid key: ", obj2));
    }
}
