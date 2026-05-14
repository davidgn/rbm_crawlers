package D2;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public final class d extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f677a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Handler handler, TaskCompletionSource taskCompletionSource) {
        super(handler);
        this.f677a = taskCompletionSource;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        this.f677a.trySetResult(null);
    }
}
