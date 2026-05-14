.class public final Lcom/google/android/gms/internal/ads/zzfix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcmo;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfhb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfjw;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfpm;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfkc;

.field private zzi:LN2/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcmo;Lcom/google/android/gms/internal/ads/zzfhb;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzfkc;Lcom/google/android/gms/internal/ads/zzfjw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfix;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzc:Lcom/google/android/gms/internal/ads/zzcmo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfix;->zze:Lcom/google/android/gms/internal/ads/zzfhb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzh:Lcom/google/android/gms/internal/ads/zzfkc;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzf:Lcom/google/android/gms/internal/ads/zzfjw;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcmo;->zzx()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzg:Lcom/google/android/gms/internal/ads/zzfpm;

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzfgz;)Lcom/google/android/gms/internal/ads/zzduv;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzc:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmo;->zzp()Lcom/google/android/gms/internal/ads/zzduv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfix;->zza:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdbf;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdbf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzb(Lcom/google/android/gms/internal/ads/zzfkd;)Lcom/google/android/gms/internal/ads/zzdbf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzf:Lcom/google/android/gms/internal/ads/zzfjw;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzf(Lcom/google/android/gms/internal/ads/zzfjw;)Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdbf;->zze()Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzduv;->zzd(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzduv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdhv;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhv;->zzn()Lcom/google/android/gms/internal/ads/zzdhw;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzduv;->zze(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzduv;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesv;Lcom/google/android/gms/internal/ads/zzesw;)Z
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcbb;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V

    check-cast p3, Lcom/google/android/gms/internal/ads/zzfiq;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzcbb;->zzb:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfiv;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfiv;-><init>(Lcom/google/android/gms/internal/ads/zzfix;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzi:LN2/o;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhv;->zzdi:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzc()V

    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjo;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x5

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfix;->zze:Lcom/google/android/gms/internal/ads/zzfhb;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfhb;->zzd()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfhb;->zzd()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzduw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdbe;->zzd()Lcom/google/android/gms/internal/ads/zzfpj;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfpj;->zzi(I)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcbb;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzfpj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfpj;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfpj;

    move-object v6, p2

    goto :goto_0

    :cond_3
    move-object v6, v1

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfix;->zza:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcbb;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/zzfla;->zzb(Landroid/content/Context;Z)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhv;->zzkm:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v9, 0x1

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzc:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcmo;->zzw()Lcom/google/android/gms/internal/ads/zzebw;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzebw;->zzc(Z)V

    :cond_4
    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxz;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxz;->zzb:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyb;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzh:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfkc;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfkc;->zzA()Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpi;->zzg(Lcom/google/android/gms/internal/ads/zzfkd;)I

    move-result v2

    invoke-static {p2, v2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfoz;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfiw;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzfiw;-><init>([B)V

    iput-object p1, v8, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfix;->zze:Lcom/google/android/gms/internal/ads/zzfhb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfhc;

    invoke-direct {p2, v8, v1}, Lcom/google/android/gms/internal/ads/zzfhc;-><init>(Lcom/google/android/gms/internal/ads/zzfgz;Lcom/google/android/gms/internal/ads/zzcai;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfiu;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfiu;-><init>(Lcom/google/android/gms/internal/ads/zzfix;)V

    invoke-interface {p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzfhb;->zzc(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Ljava/lang/Object;)LN2/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzi:LN2/o;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfit;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfit;-><init>(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzesw;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;Lcom/google/android/gms/internal/ads/zzfiw;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    move p2, v9

    :goto_1
    return p2
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final synthetic zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfio;->zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfgz;)Lcom/google/android/gms/internal/ads/zzduv;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfix;->zzk(Lcom/google/android/gms/internal/ads/zzfgz;)Lcom/google/android/gms/internal/ads/zzduv;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzfgz;)Lcom/google/android/gms/internal/ads/zzduv;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfix;->zzk(Lcom/google/android/gms/internal/ads/zzfgz;)Lcom/google/android/gms/internal/ads/zzduv;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzf()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfio;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    return-object v0
.end method

.method public final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfhb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfix;->zze:Lcom/google/android/gms/internal/ads/zzfhb;

    return-object v0
.end method

.method public final synthetic zzi()Lcom/google/android/gms/internal/ads/zzfpm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzg:Lcom/google/android/gms/internal/ads/zzfpm;

    return-object v0
.end method

.method public final zzj(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfix;->zzh:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkc;->zzj()Lcom/google/android/gms/internal/ads/zzfjq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfjq;->zza(I)Lcom/google/android/gms/internal/ads/zzfjq;

    return-void
.end method
