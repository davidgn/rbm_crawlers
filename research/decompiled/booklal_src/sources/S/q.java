package S;

import M.C0077g;
import M.InterfaceC0076f;
import M.InterfaceC0094y;
import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class q implements InterfaceC0094y {
    public final C0077g a(View view, C0077g c0077g) {
        CharSequence coerceToStyledText;
        if (Log.isLoggable("ReceiveContent", 3)) {
            Log.d("ReceiveContent", "onReceive: " + c0077g);
        }
        if (c0077g.f1831a.k() == 2) {
            return c0077g;
        }
        InterfaceC0076f interfaceC0076f = c0077g.f1831a;
        ClipData a5 = interfaceC0076f.a();
        int h5 = interfaceC0076f.h();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z4 = false;
        for (int i = 0; i < a5.getItemCount(); i++) {
            ClipData.Item itemAt = a5.getItemAt(i);
            if ((h5 & 1) != 0) {
                coerceToStyledText = itemAt.coerceToText(context);
                if (coerceToStyledText instanceof Spanned) {
                    coerceToStyledText = coerceToStyledText.toString();
                }
            } else {
                coerceToStyledText = itemAt.coerceToStyledText(context);
            }
            if (coerceToStyledText != null) {
                if (z4) {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), coerceToStyledText);
                } else {
                    int selectionStart = Selection.getSelectionStart(editable);
                    int selectionEnd = Selection.getSelectionEnd(editable);
                    int max = Math.max(0, Math.min(selectionStart, selectionEnd));
                    int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
                    Selection.setSelection(editable, max2);
                    editable.replace(max, max2, coerceToStyledText);
                    z4 = true;
                }
            }
        }
        return null;
    }
}
