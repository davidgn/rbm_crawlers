.class public final Lcom/google/android/gms/internal/ads/zzwo;
.super Lcom/google/android/gms/internal/ads/zzyy;
.source "SourceFile"


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbe;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbd;

.field private zze:Lcom/google/android/gms/internal/ads/zzwm;

.field private zzf:Lcom/google/android/gms/internal/ads/zzwl;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwv;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Lcom/google/android/gms/internal/ads/zzwv;)V

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwv;->zzI()Z

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzb:Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzc:Lcom/google/android/gms/internal/ads/zzbe;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwv;->zzH()Lcom/google/android/gms/internal/ads/zzbf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwv;->zzJ()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzp(Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    return-void
.end method

.method private final zzK(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzs()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwm;->zzc:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzs()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final zzL(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzf:Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwl;->zza:Lcom/google/android/gms/internal/ads/zzwt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzwm;->zze(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzwm;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, -0x1

    add-long/2addr v1, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwl;->zzo(J)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzak;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwh;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzyu;->zzp(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzyu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwm;->zzr(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzp(Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zza:Lcom/google/android/gms/internal/ads/zzwv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwv;->zzA(Lcom/google/android/gms/internal/ads/zzak;)V

    return-void
.end method

.method public final zzB()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzg:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyy;->zza:Lcom/google/android/gms/internal/ads/zzwv;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzwb;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwv;)V

    :cond_0
    return-void
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)Lcom/google/android/gms/internal/ads/zzwl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyy;->zza:Lcom/google/android/gms/internal/ads/zzwv;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzwl;->zzr(Lcom/google/android/gms/internal/ads/zzwv;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzh:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzwo;->zzK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzwt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzt(Lcom/google/android/gms/internal/ads/zzwt;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzf:Lcom/google/android/gms/internal/ads/zzwl;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzg:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzg:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyy;->zza:Lcom/google/android/gms/internal/ads/zzwv;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwb;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwv;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final zzD(Lcom/google/android/gms/internal/ads/zzwr;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwl;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzf:Lcom/google/android/gms/internal/ads/zzwl;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzf:Lcom/google/android/gms/internal/ads/zzwl;

    :cond_0
    return-void
.end method

.method public final zzE(Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzr(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzf:Lcom/google/android/gms/internal/ads/zzwl;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzq()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzwo;->zzL(J)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzr(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbe;->zza:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzwm;->zzc:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzwm;->zzq(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzc:Lcom/google/android/gms/internal/ads/zzbe;

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzbe;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzf:Lcom/google/android/gms/internal/ads/zzwl;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzwl;->zza()J

    move-result-wide v6

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwl;->zza:Lcom/google/android/gms/internal/ads/zzwt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    invoke-virtual {v9, v2, v10}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzwm;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-wide v6, v4

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzd:Lcom/google/android/gms/internal/ads/zzbd;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbf;->zzm(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzi:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwm;->zzr(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p1, v8, v2}, Lcom/google/android/gms/internal/ads/zzwm;->zzq(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzf:Lcom/google/android/gms/internal/ads/zzwl;

    if-eqz p1, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzwo;->zzL(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwl;->zza:Lcom/google/android/gms/internal/ads/zzwt;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwo;->zzK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v1

    :cond_5
    :goto_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvs;->zze(Lcom/google/android/gms/internal/ads/zzbf;)V

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzf:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzwl;->zzt(Lcom/google/android/gms/internal/ads/zzwt;)V

    :cond_6
    return-void
.end method

.method public final zzF(Lcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zzwt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzs()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzs()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwm;->zzc:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzwt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)Lcom/google/android/gms/internal/ads/zzwr;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzwo;->zzC(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzg:Z

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzwb;->zzd()V

    return-void
.end method

.method public final zzz()Lcom/google/android/gms/internal/ads/zzbf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zze:Lcom/google/android/gms/internal/ads/zzwm;

    return-object v0
.end method
