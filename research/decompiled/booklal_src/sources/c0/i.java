package c0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
/* loaded from: classes.dex */
public final class i implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final EditText f4830a;

    /* renamed from: b  reason: collision with root package name */
    public h f4831b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4832c = true;

    public i(EditText editText) {
        this.f4830a = editText;
    }

    public static void a(EditText editText, int i) {
        int length;
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            androidx.emoji2.text.j a5 = androidx.emoji2.text.j.a();
            if (editableText == null) {
                length = 0;
            } else {
                a5.getClass();
                length = editableText.length();
            }
            a5.e(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i4, int i5) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i4, int i5) {
        EditText editText = this.f4830a;
        if (editText.isInEditMode() || !this.f4832c || androidx.emoji2.text.j.f4081j == null || i4 > i5 || !(charSequence instanceof Spannable)) {
            return;
        }
        int b5 = androidx.emoji2.text.j.a().b();
        if (b5 != 0) {
            if (b5 == 1) {
                androidx.emoji2.text.j.a().e((Spannable) charSequence, i, i5 + i);
                return;
            } else if (b5 != 3) {
                return;
            }
        }
        androidx.emoji2.text.j a5 = androidx.emoji2.text.j.a();
        if (this.f4831b == null) {
            this.f4831b = new h(editText);
        }
        a5.f(this.f4831b);
    }
}
