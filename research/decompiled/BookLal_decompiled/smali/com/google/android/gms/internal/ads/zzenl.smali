.class public final Lcom/google/android/gms/internal/ads/zzenl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeld;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdnh;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdnh;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenl;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzb:Lcom/google/android/gms/internal/ads/zzdnh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static final zzc(Lcom/google/android/gms/internal/ads/zzfjv;I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjv;->zza:Lcom/google/android/gms/internal/ads/zzfjs;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkd;->zzh:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzela;)V
    .locals 9

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzela;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzflb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjv;->zza:Lcom/google/android/gms/internal/ads/zzfjs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzv:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzm(Lcom/google/android/gms/internal/ads/zzfjp;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzenl;->zza:Landroid/content/Context;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzela;->zzc:Lcom/google/android/gms/internal/ads/zzddg;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbun;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzfkd;->zzj:Lcom/google/android/gms/internal/ads/zzbky;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfkd;->zzh:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfkd;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzflb;->zzo(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbun;Lcom/google/android/gms/internal/ads/zzbky;Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzela;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzela;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzflb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzD()Lcom/google/android/gms/internal/ads/zzbus;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzE()Lcom/google/android/gms/internal/ads/zzbut;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzu()Lcom/google/android/gms/internal/ads/zzbuw;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eqz v3, :cond_0

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzenl;->zzc(Lcom/google/android/gms/internal/ads/zzfjv;I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdoy;->zzaf(Lcom/google/android/gms/internal/ads/zzbuw;)Lcom/google/android/gms/internal/ads/zzdoy;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzenl;->zzc(Lcom/google/android/gms/internal/ads/zzfjv;I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzai(Lcom/google/android/gms/internal/ads/zzbus;)Lcom/google/android/gms/internal/ads/zzdoy;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v6, 0x2

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzenl;->zzc(Lcom/google/android/gms/internal/ads/zzfjv;I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdoy;->zzah(Lcom/google/android/gms/internal/ads/zzbus;)Lcom/google/android/gms/internal/ads/zzdoy;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzenl;->zzc(Lcom/google/android/gms/internal/ads/zzfjv;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzaj(Lcom/google/android/gms/internal/ads/zzbut;)Lcom/google/android/gms/internal/ads/zzdoy;

    move-result-object v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzenl;->zzc(Lcom/google/android/gms/internal/ads/zzfjv;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdoy;->zzag(Lcom/google/android/gms/internal/ads/zzbut;)Lcom/google/android/gms/internal/ads/zzdoy;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_4

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfjv;->zza:Lcom/google/android/gms/internal/ads/zzfjs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdoy;->zzx()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfkd;->zzh:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzb:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzela;->zza:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcxo;

    invoke-direct {v7, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdpj;

    invoke-direct {p1, v5}, Lcom/google/android/gms/internal/ads/zzdpj;-><init>(Lcom/google/android/gms/internal/ads/zzdoy;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdrc;

    invoke-direct {p2, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Lcom/google/android/gms/internal/ads/zzbut;Lcom/google/android/gms/internal/ads/zzbus;Lcom/google/android/gms/internal/ads/zzbuw;)V

    invoke-virtual {v4, v7, p1, p2}, Lcom/google/android/gms/internal/ads/zzdnh;->zze(Lcom/google/android/gms/internal/ads/zzcxo;Lcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdrc;)Lcom/google/android/gms/internal/ads/zzdpa;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzela;->zzc:Lcom/google/android/gms/internal/ads/zzddg;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwz;->zzf()Lcom/google/android/gms/internal/ads/zzeqb;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzemm;->zzc(Lcom/google/android/gms/internal/ads/zzbun;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwz;->zza()Lcom/google/android/gms/internal/ads/zzdcv;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcse;

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzcse;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenl;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdhu;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpb;->zzh()Lcom/google/android/gms/internal/ads/zzdot;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeom;

    const-string p2, "No corresponding native ad listener"

    invoke-direct {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeom;

    const-string p2, "No native ad mappers"

    invoke-direct {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzeom;-><init>(ILjava/lang/String;)V

    throw p1
.end method
