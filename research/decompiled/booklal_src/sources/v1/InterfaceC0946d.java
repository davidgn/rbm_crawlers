package v1;

import android.graphics.drawable.Drawable;
import r1.InterfaceC0805e;
import u1.InterfaceC0922b;
/* renamed from: v1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0946d extends InterfaceC0805e {
    InterfaceC0922b getRequest();

    void getSize(InterfaceC0945c interfaceC0945c);

    void onLoadCleared(Drawable drawable);

    void onLoadFailed(Drawable drawable);

    void onLoadStarted(Drawable drawable);

    void onResourceReady(Object obj, w1.c cVar);

    void removeCallback(InterfaceC0945c interfaceC0945c);

    void setRequest(InterfaceC0922b interfaceC0922b);
}
