package t3;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class f implements Externalizable {

    /* renamed from: d  reason: collision with root package name */
    public boolean f10366d;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10369l;

    /* renamed from: a  reason: collision with root package name */
    public String f10363a = "";

    /* renamed from: b  reason: collision with root package name */
    public String f10364b = "";

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f10365c = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public String f10367e = "";

    /* renamed from: f  reason: collision with root package name */
    public boolean f10368f = false;

    /* renamed from: m  reason: collision with root package name */
    public String f10370m = "";

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        this.f10363a = objectInput.readUTF();
        this.f10364b = objectInput.readUTF();
        int readInt = objectInput.readInt();
        for (int i = 0; i < readInt; i++) {
            this.f10365c.add(objectInput.readUTF());
        }
        if (objectInput.readBoolean()) {
            String readUTF = objectInput.readUTF();
            this.f10366d = true;
            this.f10367e = readUTF;
        }
        if (objectInput.readBoolean()) {
            String readUTF2 = objectInput.readUTF();
            this.f10369l = true;
            this.f10370m = readUTF2;
        }
        this.f10368f = objectInput.readBoolean();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeUTF(this.f10363a);
        objectOutput.writeUTF(this.f10364b);
        int size = this.f10365c.size();
        objectOutput.writeInt(size);
        for (int i = 0; i < size; i++) {
            objectOutput.writeUTF((String) this.f10365c.get(i));
        }
        objectOutput.writeBoolean(this.f10366d);
        if (this.f10366d) {
            objectOutput.writeUTF(this.f10367e);
        }
        objectOutput.writeBoolean(this.f10369l);
        if (this.f10369l) {
            objectOutput.writeUTF(this.f10370m);
        }
        objectOutput.writeBoolean(this.f10368f);
    }
}
