.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzir;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

.field private static final zzd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzir;->zzd:[B

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/zztv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    move-object v4, v7

    move-object v5, v8

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzir;->zza(IIILcom/google/android/gms/internal/firebase-auth-api/zzsu;Lcom/google/android/gms/internal/firebase-auth-api/zztv;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzir;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    const/4 v3, 0x4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zztv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    const/4 v1, 0x4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzir;->zza(IIILcom/google/android/gms/internal/firebase-auth-api/zzsu;Lcom/google/android/gms/internal/firebase-auth-api/zztv;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzir;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    const/4 v1, 0x4

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzir;->zza(IIILcom/google/android/gms/internal/firebase-auth-api/zzsu;Lcom/google/android/gms/internal/firebase-auth-api/zztv;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzir;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    return-void
.end method

.method public static zza(IIILcom/google/android/gms/internal/firebase-auth-api/zzsu;Lcom/google/android/gms/internal/firebase-auth-api/zztv;[B)Lcom/google/android/gms/internal/firebase-auth-api/zzsu;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqt;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzrg;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzrf;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrf;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzrf;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzrf;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzrf;

    const/4 v0, 0x0

    invoke-static {p5, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzn([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzrf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaff;)Lcom/google/android/gms/internal/firebase-auth-api/zzrf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagg;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzagk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrg;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqq;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzqq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsu;)Lcom/google/android/gms/internal/firebase-auth-api/zzqq;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzagg;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzagk;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/zzqr;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzqx;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzqw;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqw;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzrg;)Lcom/google/android/gms/internal/firebase-auth-api/zzqw;

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzqw;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzqr;)Lcom/google/android/gms/internal/firebase-auth-api/zzqw;

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzqw;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzqw;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzagg;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzagk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzqx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzqt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzqx;)Lcom/google/android/gms/internal/firebase-auth-api/zzqt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagg;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzagk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzqu;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzst;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzij;

    invoke-direct {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzij;-><init>()V

    const-string p2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzst;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzst;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzst;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztv;)Lcom/google/android/gms/internal/firebase-auth-api/zzst;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaep;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzst;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzaff;)Lcom/google/android/gms/internal/firebase-auth-api/zzst;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagg;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzagk;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsu;

    return-object p0
.end method
