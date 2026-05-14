package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.HashMap;
import v0.BinderC0938f;
import v0.RemoteCallbackListC0937e;
/* loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a  reason: collision with root package name */
    public int f4603a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f4604b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final RemoteCallbackListC0937e f4605c = new RemoteCallbackListC0937e(this);

    /* renamed from: d  reason: collision with root package name */
    public final BinderC0938f f4606d = new BinderC0938f(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f4606d;
    }
}
