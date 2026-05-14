package d4;

import b4.InterfaceC0294h;
import kotlin.coroutines.Continuation;
/* renamed from: d4.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0379b implements Continuation {

    /* renamed from: a  reason: collision with root package name */
    public static final C0379b f6968a = new Object();

    @Override // kotlin.coroutines.Continuation
    public final InterfaceC0294h getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    public final String toString() {
        return "This continuation is already complete";
    }
}
