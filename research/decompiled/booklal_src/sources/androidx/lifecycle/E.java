package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes.dex */
public abstract class E {
    public static final void a(Activity activity, Application.ActivityLifecycleCallbacks callback) {
        kotlin.jvm.internal.i.f(activity, "activity");
        kotlin.jvm.internal.i.f(callback, "callback");
        activity.registerActivityLifecycleCallbacks(callback);
    }
}
