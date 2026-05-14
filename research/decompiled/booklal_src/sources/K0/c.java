package K0;

import android.os.Build;
import java.util.HashSet;
/* loaded from: classes.dex */
public abstract class c implements d {

    /* renamed from: c  reason: collision with root package name */
    public static final HashSet f1371c = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    public final String f1372a;

    /* renamed from: b  reason: collision with root package name */
    public final String f1373b;

    public c(String str, String str2) {
        this.f1372a = str;
        this.f1373b = str2;
        f1371c.add(this);
    }

    public abstract boolean a();

    public boolean b() {
        HashSet hashSet = a.f1369a;
        String str = this.f1373b;
        if (!hashSet.contains(str)) {
            String str2 = Build.TYPE;
            if ((!"eng".equals(str2) && !"userdebug".equals(str2)) || !hashSet.contains(str.concat(":dev"))) {
                return false;
            }
        }
        return true;
    }
}
