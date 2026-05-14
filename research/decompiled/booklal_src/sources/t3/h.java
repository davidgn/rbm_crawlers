package t3;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class h implements Externalizable {

    /* renamed from: B  reason: collision with root package name */
    public boolean f10372B;

    /* renamed from: D  reason: collision with root package name */
    public boolean f10374D;

    /* renamed from: F  reason: collision with root package name */
    public boolean f10376F;
    public boolean H;

    /* renamed from: J  reason: collision with root package name */
    public boolean f10379J;

    /* renamed from: L  reason: collision with root package name */
    public boolean f10381L;

    /* renamed from: Q  reason: collision with root package name */
    public boolean f10386Q;

    /* renamed from: S  reason: collision with root package name */
    public boolean f10388S;

    /* renamed from: U  reason: collision with root package name */
    public boolean f10390U;

    /* renamed from: W  reason: collision with root package name */
    public boolean f10392W;
    public boolean Y;

    /* renamed from: a  reason: collision with root package name */
    public boolean f10395a;

    /* renamed from: c  reason: collision with root package name */
    public boolean f10399c;

    /* renamed from: e  reason: collision with root package name */
    public boolean f10403e;

    /* renamed from: e0  reason: collision with root package name */
    public boolean f10404e0;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10408l;

    /* renamed from: n  reason: collision with root package name */
    public boolean f10410n;

    /* renamed from: p  reason: collision with root package name */
    public boolean f10411p;

    /* renamed from: r  reason: collision with root package name */
    public boolean f10413r;

    /* renamed from: t  reason: collision with root package name */
    public boolean f10415t;

    /* renamed from: v  reason: collision with root package name */
    public boolean f10417v;

    /* renamed from: x  reason: collision with root package name */
    public boolean f10419x;

    /* renamed from: z  reason: collision with root package name */
    public boolean f10421z;

    /* renamed from: b  reason: collision with root package name */
    public i f10397b = null;

    /* renamed from: d  reason: collision with root package name */
    public i f10401d = null;

    /* renamed from: f  reason: collision with root package name */
    public i f10405f = null;

    /* renamed from: m  reason: collision with root package name */
    public i f10409m = null;
    public i o = null;

    /* renamed from: q  reason: collision with root package name */
    public i f10412q = null;

    /* renamed from: s  reason: collision with root package name */
    public i f10414s = null;

    /* renamed from: u  reason: collision with root package name */
    public i f10416u = null;

    /* renamed from: w  reason: collision with root package name */
    public i f10418w = null;

    /* renamed from: y  reason: collision with root package name */
    public i f10420y = null;

    /* renamed from: A  reason: collision with root package name */
    public i f10371A = null;

    /* renamed from: C  reason: collision with root package name */
    public i f10373C = null;

    /* renamed from: E  reason: collision with root package name */
    public i f10375E = null;

    /* renamed from: G  reason: collision with root package name */
    public i f10377G = null;

    /* renamed from: I  reason: collision with root package name */
    public i f10378I = null;

    /* renamed from: K  reason: collision with root package name */
    public i f10380K = null;

    /* renamed from: M  reason: collision with root package name */
    public i f10382M = null;

    /* renamed from: N  reason: collision with root package name */
    public String f10383N = "";

    /* renamed from: O  reason: collision with root package name */
    public int f10384O = 0;

    /* renamed from: P  reason: collision with root package name */
    public String f10385P = "";

    /* renamed from: R  reason: collision with root package name */
    public String f10387R = "";

    /* renamed from: T  reason: collision with root package name */
    public String f10389T = "";

    /* renamed from: V  reason: collision with root package name */
    public String f10391V = "";

    /* renamed from: X  reason: collision with root package name */
    public String f10393X = "";

    /* renamed from: Z  reason: collision with root package name */
    public String f10394Z = "";

    /* renamed from: a0  reason: collision with root package name */
    public boolean f10396a0 = false;

    /* renamed from: b0  reason: collision with root package name */
    public final ArrayList f10398b0 = new ArrayList();

    /* renamed from: c0  reason: collision with root package name */
    public final ArrayList f10400c0 = new ArrayList();

    /* renamed from: d0  reason: collision with root package name */
    public boolean f10402d0 = false;

    /* renamed from: f0  reason: collision with root package name */
    public String f10406f0 = "";

    /* renamed from: g0  reason: collision with root package name */
    public boolean f10407g0 = false;

    public void a(String str) {
        this.f10383N = str;
    }

    public void b(String str) {
        this.f10385P = str;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        if (objectInput.readBoolean()) {
            i iVar = new i();
            iVar.readExternal(objectInput);
            this.f10395a = true;
            this.f10397b = iVar;
        }
        if (objectInput.readBoolean()) {
            i iVar2 = new i();
            iVar2.readExternal(objectInput);
            this.f10399c = true;
            this.f10401d = iVar2;
        }
        if (objectInput.readBoolean()) {
            i iVar3 = new i();
            iVar3.readExternal(objectInput);
            this.f10403e = true;
            this.f10405f = iVar3;
        }
        if (objectInput.readBoolean()) {
            i iVar4 = new i();
            iVar4.readExternal(objectInput);
            this.f10408l = true;
            this.f10409m = iVar4;
        }
        if (objectInput.readBoolean()) {
            i iVar5 = new i();
            iVar5.readExternal(objectInput);
            this.f10410n = true;
            this.o = iVar5;
        }
        if (objectInput.readBoolean()) {
            i iVar6 = new i();
            iVar6.readExternal(objectInput);
            this.f10411p = true;
            this.f10412q = iVar6;
        }
        if (objectInput.readBoolean()) {
            i iVar7 = new i();
            iVar7.readExternal(objectInput);
            this.f10413r = true;
            this.f10414s = iVar7;
        }
        if (objectInput.readBoolean()) {
            i iVar8 = new i();
            iVar8.readExternal(objectInput);
            this.f10415t = true;
            this.f10416u = iVar8;
        }
        if (objectInput.readBoolean()) {
            i iVar9 = new i();
            iVar9.readExternal(objectInput);
            this.f10417v = true;
            this.f10418w = iVar9;
        }
        if (objectInput.readBoolean()) {
            i iVar10 = new i();
            iVar10.readExternal(objectInput);
            this.f10419x = true;
            this.f10420y = iVar10;
        }
        if (objectInput.readBoolean()) {
            i iVar11 = new i();
            iVar11.readExternal(objectInput);
            this.f10421z = true;
            this.f10371A = iVar11;
        }
        if (objectInput.readBoolean()) {
            i iVar12 = new i();
            iVar12.readExternal(objectInput);
            this.f10372B = true;
            this.f10373C = iVar12;
        }
        if (objectInput.readBoolean()) {
            i iVar13 = new i();
            iVar13.readExternal(objectInput);
            this.f10374D = true;
            this.f10375E = iVar13;
        }
        if (objectInput.readBoolean()) {
            i iVar14 = new i();
            iVar14.readExternal(objectInput);
            this.f10376F = true;
            this.f10377G = iVar14;
        }
        if (objectInput.readBoolean()) {
            i iVar15 = new i();
            iVar15.readExternal(objectInput);
            this.H = true;
            this.f10378I = iVar15;
        }
        if (objectInput.readBoolean()) {
            i iVar16 = new i();
            iVar16.readExternal(objectInput);
            this.f10379J = true;
            this.f10380K = iVar16;
        }
        if (objectInput.readBoolean()) {
            i iVar17 = new i();
            iVar17.readExternal(objectInput);
            this.f10381L = true;
            this.f10382M = iVar17;
        }
        a(objectInput.readUTF());
        this.f10384O = objectInput.readInt();
        b(objectInput.readUTF());
        if (objectInput.readBoolean()) {
            String readUTF = objectInput.readUTF();
            this.f10386Q = true;
            this.f10387R = readUTF;
        }
        if (objectInput.readBoolean()) {
            String readUTF2 = objectInput.readUTF();
            this.f10388S = true;
            this.f10389T = readUTF2;
        }
        if (objectInput.readBoolean()) {
            String readUTF3 = objectInput.readUTF();
            this.f10390U = true;
            this.f10391V = readUTF3;
        }
        if (objectInput.readBoolean()) {
            String readUTF4 = objectInput.readUTF();
            this.f10392W = true;
            this.f10393X = readUTF4;
        }
        if (objectInput.readBoolean()) {
            String readUTF5 = objectInput.readUTF();
            this.Y = true;
            this.f10394Z = readUTF5;
        }
        this.f10396a0 = objectInput.readBoolean();
        int readInt = objectInput.readInt();
        for (int i = 0; i < readInt; i++) {
            f fVar = new f();
            fVar.readExternal(objectInput);
            this.f10398b0.add(fVar);
        }
        int readInt2 = objectInput.readInt();
        for (int i4 = 0; i4 < readInt2; i4++) {
            f fVar2 = new f();
            fVar2.readExternal(objectInput);
            this.f10400c0.add(fVar2);
        }
        this.f10402d0 = objectInput.readBoolean();
        if (objectInput.readBoolean()) {
            String readUTF6 = objectInput.readUTF();
            this.f10404e0 = true;
            this.f10406f0 = readUTF6;
        }
        this.f10407g0 = objectInput.readBoolean();
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeBoolean(this.f10395a);
        if (this.f10395a) {
            this.f10397b.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10399c);
        if (this.f10399c) {
            this.f10401d.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10403e);
        if (this.f10403e) {
            this.f10405f.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10408l);
        if (this.f10408l) {
            this.f10409m.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10410n);
        if (this.f10410n) {
            this.o.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10411p);
        if (this.f10411p) {
            this.f10412q.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10413r);
        if (this.f10413r) {
            this.f10414s.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10415t);
        if (this.f10415t) {
            this.f10416u.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10417v);
        if (this.f10417v) {
            this.f10418w.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10419x);
        if (this.f10419x) {
            this.f10420y.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10421z);
        if (this.f10421z) {
            this.f10371A.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10372B);
        if (this.f10372B) {
            this.f10373C.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10374D);
        if (this.f10374D) {
            this.f10375E.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10376F);
        if (this.f10376F) {
            this.f10377G.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.H);
        if (this.H) {
            this.f10378I.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10379J);
        if (this.f10379J) {
            this.f10380K.writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10381L);
        if (this.f10381L) {
            this.f10382M.writeExternal(objectOutput);
        }
        objectOutput.writeUTF(this.f10383N);
        objectOutput.writeInt(this.f10384O);
        objectOutput.writeUTF(this.f10385P);
        objectOutput.writeBoolean(this.f10386Q);
        if (this.f10386Q) {
            objectOutput.writeUTF(this.f10387R);
        }
        objectOutput.writeBoolean(this.f10388S);
        if (this.f10388S) {
            objectOutput.writeUTF(this.f10389T);
        }
        objectOutput.writeBoolean(this.f10390U);
        if (this.f10390U) {
            objectOutput.writeUTF(this.f10391V);
        }
        objectOutput.writeBoolean(this.f10392W);
        if (this.f10392W) {
            objectOutput.writeUTF(this.f10393X);
        }
        objectOutput.writeBoolean(this.Y);
        if (this.Y) {
            objectOutput.writeUTF(this.f10394Z);
        }
        objectOutput.writeBoolean(this.f10396a0);
        ArrayList arrayList = this.f10398b0;
        int size = arrayList.size();
        objectOutput.writeInt(size);
        for (int i = 0; i < size; i++) {
            ((f) arrayList.get(i)).writeExternal(objectOutput);
        }
        int size2 = this.f10400c0.size();
        objectOutput.writeInt(size2);
        for (int i4 = 0; i4 < size2; i4++) {
            ((f) this.f10400c0.get(i4)).writeExternal(objectOutput);
        }
        objectOutput.writeBoolean(this.f10402d0);
        objectOutput.writeBoolean(this.f10404e0);
        if (this.f10404e0) {
            objectOutput.writeUTF(this.f10406f0);
        }
        objectOutput.writeBoolean(this.f10407g0);
    }
}
