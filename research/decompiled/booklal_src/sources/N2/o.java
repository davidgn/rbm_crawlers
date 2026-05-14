package N2;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public interface o extends Future {
    void addListener(Runnable runnable, Executor executor);
}
