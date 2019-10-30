//
//  ViewController.swift
//  CalendarControl
//
//  Created by anoop on 2018-11-21.
//  Copyright © 2018 anoop. All rights reserved.
//

import UIKit
import JTAppleCalendar
class ViewController: UIViewController {

    @IBOutlet weak var calendarView: JTAppleCalendarView!
    let formatter = DateFormatter()
    let numberOfRows = 6
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureCalendarView()
    }
    
    func configureCalendarView(){
        
        calendarView.minimumLineSpacing = 0
        calendarView.minimumInteritemSpacing = 0
        
        calendarView.register(UINib(nibName: "CalendarSectionHeaderView", bundle: Bundle.main),
                              forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                              withReuseIdentifier: "CalendarSectionHeaderView")
        self.calendarView.scrollToDate(Date(),animateScroll: false)
        self.calendarView.selectDates([ Date() ])
        
    }
    
    // Configure the cell
    func configureCell(cell: JTAppleCell?, cellState: CellState) {
        guard let currentCell = cell as? CalendarCell else {
            return
        }
        
        currentCell.dateLabel.text = cellState.text
        configureSelectedStateFor(cell: currentCell, cellState: cellState)
        configureTextColorFor(cell: currentCell, cellState: cellState)
        let cellHidden = cellState.dateBelongsTo != .thisMonth
        currentCell.isHidden = cellHidden
    
    }
    // Configure text colors
    func configureTextColorFor(cell: JTAppleCell?, cellState: CellState){
        
        guard let currentCell = cell as? CalendarCell else {
            return
        }
        if cellState.isSelected{
            currentCell.dateLabel.textColor = UIColor.black
        }else{
            if cellState.dateBelongsTo == .thisMonth && cellState.date > Date()  {
                currentCell.dateLabel.textColor = UIColor.white
            }else{
                currentCell.dateLabel.textColor = UIColor.gray
            }
        }
    }
    
    func configureSelectedStateFor(cell: JTAppleCell?, cellState: CellState){
        
        guard let currentCell = cell as? CalendarCell else {
            return
        }
        if cellState.isSelected{
            currentCell.selectedView.isHidden = false
            currentCell.bgView.isHidden = true
        }else{
            currentCell.selectedView.isHidden = true
            currentCell.bgView.isHidden = true
        }
    }
}

extension ViewController: JTAppleCalendarViewDataSource{
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CalendarCell", for: indexPath) as! CalendarCell
        configureCell(cell: cell, cellState: cellState)
        
    }
    

    
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        formatter.dateFormat = "dd MM yy"
        formatter.timeZone = Calendar.current.timeZone
        formatter.locale = Calendar.current.locale
        calendar.scrollingMode = .stopAtEachSection
        
        let startDate = formatter.date(from: "01 01 18")!
        let endDate = formatter.date(from: "31 12 20")!
        
        let parameters = ConfigurationParameters(startDate: startDate,
                                endDate: endDate,
                                numberOfRows: numberOfRows,
                                calendar: Calendar.current,
                                generateInDates: .forAllMonths,
                                generateOutDates: .tillEndOfRow,
                                firstDayOfWeek: .sunday,
                                hasStrictBoundaries: true)
        return parameters
    }
    
    
}

extension ViewController:JTAppleCalendarViewDelegate{
    
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CalendarCell", for: indexPath) as! CalendarCell
        configureCell(cell: cell, cellState: cellState)
        return cell
        
    }
    
    func calendar(_ calendar: JTAppleCalendarView, didSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        configureCell(cell: cell, cellState: cellState)
    }
    
    func calendar(_ calendar: JTAppleCalendarView, didDeselectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        configureCell(cell: cell, cellState: cellState)
    }
    
    
    
    func calendar(_ calendar: JTAppleCalendarView, headerViewForDateRange range: (start: Date, end: Date), at indexPath: IndexPath) -> JTAppleCollectionReusableView {
        let header = calendar.dequeueReusableJTAppleSupplementaryView(withReuseIdentifier: "CalendarSectionHeaderView", for: indexPath)
        let date = range.start
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM YYYY"
        (header as! CalendarSectionHeaderView).title.text = formatter.string(from: date)
        return header
    }
    
    func calendarSizeForMonths(_ calendar: JTAppleCalendarView?) -> MonthSize? {
        return MonthSize(defaultSize: 40)
    }
}
