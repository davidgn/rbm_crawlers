package D2;

import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public final class g extends E2.a {

    /* renamed from: a  reason: collision with root package name */
    public final E2.f f684a;

    /* renamed from: b  reason: collision with root package name */
    public final TaskCompletionSource f685b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ h f686c;

    public g(h hVar, TaskCompletionSource taskCompletionSource) {
        E2.f fVar = new E2.f("OnRequestInstallCallback", 0);
        this.f686c = hVar;
        attachInterface(this, "com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
        this.f684a = fVar;
        this.f685b = taskCompletionSource;
    }
}
