package f0;

import androidx.fragment.app.Fragment;
/* renamed from: f0.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0411i extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    public final Fragment f7284a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0411i(Fragment fragment, String str) {
        super(str);
        kotlin.jvm.internal.i.f(fragment, "fragment");
        this.f7284a = fragment;
    }
}
