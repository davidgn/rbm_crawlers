package v0;

import android.os.IInterface;
import android.os.RemoteCallbackList;
import androidx.room.MultiInstanceInvalidationService;
import java.util.HashMap;
/* renamed from: v0.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RemoteCallbackListC0937e extends RemoteCallbackList {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f11121a;

    public RemoteCallbackListC0937e(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f11121a = multiInstanceInvalidationService;
    }

    @Override // android.os.RemoteCallbackList
    public final void onCallbackDied(IInterface iInterface, Object obj) {
        C0933a c0933a = (C0933a) iInterface;
        HashMap hashMap = this.f11121a.f4604b;
        Integer num = (Integer) obj;
        num.intValue();
        hashMap.remove(num);
    }
}
