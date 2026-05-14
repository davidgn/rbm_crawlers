.class public final Lcom/google/android/gms/internal/ads/zzwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwr;
.implements Lcom/google/android/gms/internal/ads/zzwq;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzwt;

.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaaw;

.field private zzd:Lcom/google/android/gms/internal/ads/zzwv;

.field private zze:Lcom/google/android/gms/internal/ads/zzwr;

.field private zzf:Lcom/google/android/gms/internal/ads/zzwq;

.field private zzg:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zza:Lcom/google/android/gms/internal/ads/zzwt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzc:Lcom/google/android/gms/internal/ads/zzaaw;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:J

    return-void
.end method

.method private final zzv(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzb:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzwq;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzf:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzb:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzwl;->zzv(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(Lcom/google/android/gms/internal/ads/zzwq;J)V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzc()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzd:Lcom/google/android/gms/internal/ads/zzwv;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwv;->zzt()V

    :cond_1
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzyw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzd()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    return-object v0
.end method

.method public final zze([Lcom/google/android/gms/internal/ads/zzaal;[Z[Lcom/google/android/gms/internal/ads/zzyl;[ZJ)J
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzb:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    :goto_0
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzwr;->zze([Lcom/google/android/gms/internal/ads/zzaal;[Z[Lcom/google/android/gms/internal/ads/zzyl;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final zzf(JZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzf(JZ)V

    return-void
.end method

.method public final zzg(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwr;->zzg(J)V

    return-void
.end method

.method public final zzh()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzj(J)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwr;->zzj(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzk(JLcom/google/android/gms/internal/ads/zznb;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwr;->zzk(JLcom/google/android/gms/internal/ads/zznb;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzl()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzlt;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzm(Lcom/google/android/gms/internal/ads/zzlt;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:J

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzwr;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzf:Lcom/google/android/gms/internal/ads/zzwq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwq;->zzp(Lcom/google/android/gms/internal/ads/zzwr;)V

    return-void
.end method

.method public final zzq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:J

    return-wide v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzwv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzd:Lcom/google/android/gms/internal/ads/zzwv;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzd:Lcom/google/android/gms/internal/ads/zzwv;

    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzyn;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzf:Lcom/google/android/gms/internal/ads/zzwq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzym;->zzs(Lcom/google/android/gms/internal/ads/zzyn;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzwt;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzb:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzwl;->zzv(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzd:Lcom/google/android/gms/internal/ads/zzwv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzc:Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzwv;->zzG(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzf:Lcom/google/android/gms/internal/ads/zzwq;

    if-eqz v2, :cond_0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(Lcom/google/android/gms/internal/ads/zzwq;J)V

    :cond_0
    return-void
.end method

.method public final zzu()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzwr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzd:Lcom/google/android/gms/internal/ads/zzwv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzwv;->zzD(Lcom/google/android/gms/internal/ads/zzwr;)V

    :cond_0
    return-void
.end method
