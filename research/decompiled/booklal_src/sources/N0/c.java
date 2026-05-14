package N0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.n;
/* loaded from: classes.dex */
public abstract class c extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2018a = n.e("ConstraintProxy");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        n.c().a(f2018a, String.format("onReceive : %s", intent), new Throwable[0]);
        String str = b.f2014d;
        Intent intent2 = new Intent(context, SystemAlarmService.class);
        intent2.setAction("ACTION_CONSTRAINTS_CHANGED");
        context.startService(intent2);
    }
}
