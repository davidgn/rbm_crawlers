package w3;

import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: w3.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0956a implements t3.b {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f11224a = Logger.getLogger(C0956a.class.getName());

    @Override // t3.b
    public final InputStream a(String str) {
        InputStream resourceAsStream = C0956a.class.getResourceAsStream(str);
        if (resourceAsStream == null) {
            Level level = Level.WARNING;
            f11224a.log(level, "File " + str + " not found");
        }
        return resourceAsStream;
    }
}
