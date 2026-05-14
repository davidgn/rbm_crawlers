package t3;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class i implements Externalizable {

    /* renamed from: a  reason: collision with root package name */
    public boolean f10422a;

    /* renamed from: e  reason: collision with root package name */
    public boolean f10426e;

    /* renamed from: b  reason: collision with root package name */
    public String f10423b = "";

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f10424c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList f10425d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public String f10427f = "";

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        if (objectInput.readBoolean()) {
            String readUTF = objectInput.readUTF();
            this.f10422a = true;
            this.f10423b = readUTF;
        }
        int readInt = objectInput.readInt();
        for (int i = 0; i < readInt; i++) {
            this.f10424c.add(Integer.valueOf(objectInput.readInt()));
        }
        int readInt2 = objectInput.readInt();
        for (int i4 = 0; i4 < readInt2; i4++) {
            this.f10425d.add(Integer.valueOf(objectInput.readInt()));
        }
        if (objectInput.readBoolean()) {
            String readUTF2 = objectInput.readUTF();
            this.f10426e = true;
            this.f10427f = readUTF2;
        }
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeBoolean(this.f10422a);
        if (this.f10422a) {
            objectOutput.writeUTF(this.f10423b);
        }
        int size = this.f10424c.size();
        objectOutput.writeInt(size);
        for (int i = 0; i < size; i++) {
            objectOutput.writeInt(((Integer) this.f10424c.get(i)).intValue());
        }
        ArrayList arrayList = this.f10425d;
        int size2 = arrayList.size();
        objectOutput.writeInt(size2);
        for (int i4 = 0; i4 < size2; i4++) {
            objectOutput.writeInt(((Integer) arrayList.get(i4)).intValue());
        }
        objectOutput.writeBoolean(this.f10426e);
        if (this.f10426e) {
            objectOutput.writeUTF(this.f10427f);
        }
    }
}
