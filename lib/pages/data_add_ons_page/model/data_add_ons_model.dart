class SLTAddOnsModel {
  final String tittle, subtittle, description, gbAmount, amount, route;

  const SLTAddOnsModel(
      {this.tittle,
      this.subtittle,
      this.description,
      this.gbAmount,
      this.amount,
      this.route});

  String getTittle() {
    return this.tittle;
  }

  String getSubtittle() {
    return this.subtittle;
  }

  String getDescription() {
    return this.description;
  }

  String getGbAmount() {
    return this.gbAmount;
  }

  String getAmount() {
    return this.amount;
  }

  String getRoute() {
    return this.route;
  }
}
