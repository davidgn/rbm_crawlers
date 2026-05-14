package U0;

import android.content.Context;
import android.os.PowerManager;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2704a = androidx.work.n.e("WakeLocks");

    /* renamed from: b  reason: collision with root package name */
    public static final WeakHashMap f2705b = new WeakHashMap();

    public static PowerManager.WakeLock a(Context context, String str) {
        String concat = "WorkManager: ".concat(str);
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getApplicationContext().getSystemService("power")).newWakeLock(1, concat);
        WeakHashMap weakHashMap = f2705b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, concat);
        }
        return newWakeLock;
    }
}
