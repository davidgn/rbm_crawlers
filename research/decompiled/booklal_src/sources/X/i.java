package X;

import java.io.InputStream;
import java.io.OutputStream;
import kotlin.coroutines.Continuation;
/* loaded from: classes.dex */
public interface i {
    Object getDefaultValue();

    Object readFrom(InputStream inputStream, Continuation continuation);

    Object writeTo(Object obj, OutputStream outputStream, Continuation continuation);
}
