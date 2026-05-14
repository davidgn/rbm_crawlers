package B;

import android.app.NotificationManager;
import android.content.Context;
import java.util.HashSet;
/* loaded from: classes.dex */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    public final NotificationManager f138a;

    static {
        new HashSet();
    }

    public I(Context context) {
        this.f138a = (NotificationManager) context.getSystemService("notification");
    }
}
