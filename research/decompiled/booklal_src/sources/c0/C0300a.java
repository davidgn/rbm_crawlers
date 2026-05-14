package c0;

import android.text.Editable;
import androidx.emoji2.text.r;
/* renamed from: c0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0300a extends Editable.Factory {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f4814a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static volatile C0300a f4815b;

    /* renamed from: c  reason: collision with root package name */
    public static Class f4816c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f4816c;
        return cls != null ? new r(cls, charSequence) : super.newEditable(charSequence);
    }
}
