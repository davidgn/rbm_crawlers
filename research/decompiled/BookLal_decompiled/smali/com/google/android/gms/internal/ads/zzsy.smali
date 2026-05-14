.class final Lcom/google/android/gms/internal/ads/zzsy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzv;

.field private final zzc:I

.field private final zzd:I

.field private final zze:Lcom/google/android/gms/internal/ads/zzqt;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzck;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;IILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzck;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzsy;->zze:Lcom/google/android/gms/internal/ads/zzqt;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzf:Lcom/google/android/gms/internal/ads/zzck;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;IILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzck;[B)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;IILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzck;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzsy;
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzf:Lcom/google/android/gms/internal/ads/zzck;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzd:I

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;IILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzck;)V

    return-object v7
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzsy;)Z
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsy;->zze:Lcom/google/android/gms/internal/ads/zzqt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zze:Lcom/google/android/gms/internal/ads/zzqt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzqt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic zzc(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzr(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic zzd(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zze:Lcom/google/android/gms/internal/ads/zzqt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzr(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic zze()Lcom/google/android/gms/internal/ads/zzrl;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zze:Lcom/google/android/gms/internal/ads/zzqt;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzrl;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    const/4 v6, 0x0

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    const/4 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzrl;-><init>(IIIZZI)V

    return-object v8
.end method

.method public final synthetic zzf()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method public final synthetic zzh()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method public final synthetic zzi()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzc:I

    return v0
.end method

.method public final synthetic zzj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzd:I

    return v0
.end method

.method public final synthetic zzk()Lcom/google/android/gms/internal/ads/zzqt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zze:Lcom/google/android/gms/internal/ads/zzqt;

    return-object v0
.end method

.method public final synthetic zzl()Lcom/google/android/gms/internal/ads/zzck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->zzf:Lcom/google/android/gms/internal/ads/zzck;

    return-object v0
.end method
